// Copyright (c) 2009-2010 Satoshi Nakamoto
// Copyright (c) 2009-2014 The Bitcoin developers
// Copyright (c) 2011-2018 The Freicoin developers
//
// This program is free software: you can redistribute it and/or
// modify it under the conjunctive terms of BOTH version 3 of the GNU
// Affero General Public License as published by the Free Software
// Foundation AND the MIT/X11 software license.
//
// This program is distributed in the hope that it will be useful, but
// WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Affero General Public License and the MIT/X11 software license for
// more details.
//
// You should have received a copy of both licenses along with this
// program.  If not, see <https://www.gnu.org/licenses/> and
// <http://www.opensource.org/licenses/mit-license.php>

#include "core.h"

#include "util.h"

int64_t GetTimeAdjustedValue(int64_t initial_value, int relative_depth)
{
    const int sign = (initial_value > 0) - (initial_value < 0);
    const uint64_t value = std::abs(initial_value);

    /* This array of pre-generated constants is an exponentiation
     * ladder of properly calculated 64-bit fixed point demurrage
     * rates for power-of-2 block intervals. Calculating the actual
     * demurrage rate for the passed in relative_depth is a matter of
     * performing fixed point multiplication of the factors
     * corresponding to the powers of 2 (set bits) which make up
     * relative_depth.
     *
     * Our lookup table does not go beyond 26 entries because a
     * relative_depth of 1<<26 (the would-be 27th entry) would cause
     * even MAX_MONEY (2^53 - 1) to decay to zero. */
    static const uint32_t k32[2*26] = {
        0xfffff000UL, 0x00000000UL, /* 2^0 = 1 */
        0xffffe000UL, 0x01000000UL, /* 2^1 = 2 */
        0xffffc000UL, 0x05ffffc0UL, /* 2^2 = 4 */
        0xffff8000UL, 0x1bfffc80UL, /* 2^3 = 8 */
        0xffff0000UL, 0x77ffdd00UL, /* ... */
        0xfffe0001UL, 0xeffeca00UL,
        0xfffc0007UL, 0xdff5d409UL,
        0xfff8001fUL, 0xbfaca8a2UL,
        0xfff0007fUL, 0x7d5d5a6aUL,
        0xffe001feUL, 0xeacb48a8UL,
        0xffc007fdUL, 0x55dfda2aUL,
        0xff801ff6UL, 0xad5499cdUL,
        0xff007fcdUL, 0x67f98aadUL,
        0xfe01fe9bUL, 0x74f0943eUL,
        0xfc07f540UL, 0x767d2a82UL,
        0xf81fab16UL, 0x3dc15990UL,
        0xf07d5f65UL, 0xf9604ac9UL,
        0xe1eb5045UL, 0x80b6ebf7UL,
        0xc75f7b66UL, 0xa5075defUL,
        0x9b459576UL, 0x663bbb3eUL,
        0x5e2d55e7UL, 0x48e27ab4UL,
        0x22a5531dUL, 0x29a95916UL,
        0x04b054d7UL, 0xfda49c4dUL,
        0x0015fc1bUL, 0x85085be9UL,
        0x000001e3UL, 0x54ca043cUL,
        0x00000000UL, 0x00039089UL };

    /* This fixed-point method is incapable of calculating "negative"
     * demurrage rates. */
    if (relative_depth < 0)
        return value;
    /* The demurrage rate for a depth of 0, which is 1.0 exactly, has
     * no representation in 0.64 fixed point. */
    if (relative_depth == 0)
        return value;
    /* Depth of (1<<26) and beyond are sufficient to decay even
     * MAX_MONEY to zero. */
    if (relative_depth >= (1<<26))
        return 0;

    /* Overflow sensitive fixed point multiply-and-accumulate methods
     * which are used both for the exponentiation to calcuate the
     * demurrage rate, and the final multiply at the end. */
    uint64_t sum, overflow;
    #define shift32() do { \
        sum = (overflow << 32) + (sum >> 32); \
        overflow = 0; \
    } while (0)
    #define term(_val) do { \
        const uint64_t val = (_val); \
        overflow += (sum + val) < sum; \
        sum += val; \
    } while (0)

    /* We calculate the first 64 fractional bits of the demurrage rate
     * for relative_depth by raising the per-block rate of (1 - 2^-20)
     * to the relative_depth power. To perform this computation
     * efficiently we perform N multiplications of a pre-computed
     * exponentiation ladder, where N is the number of set bits in the
     * binary representation of relative_depth. */

    /* At the end of this calculation w will contain the first 64 bits
     * of the demurrage rate as a pair of 32-bit unsigned words, the
     * most significant word first. Its initial value is
     * multiplicative identity, 1.0, for which the fractional bits are
     * zero. */
    uint32_t w[2] = { 0 };

    /* The first multiplication has the accumulator set to 1.0, which
     * is the only time it has a value >= 1. This means that there are
     * some terms which are non-zero on only the very first
     * multiplication performed, and since the fractional bits of 1.0
     * are zero, the other terms that would normally are used are
     * not. */
    bool first = true;

    for (int bit = 0; relative_depth; relative_depth >>= 1, ++bit) {
        if (relative_depth & 1) {
            /* Zero-extend the accumulator state and ladder entry as
             * we will be doing our multiplications in 64-bit to
             * capture to full range. */
            const uint64_t w0 = w[0];
            const uint64_t w1 = w[1];
            const uint64_t k0 = k32[2*bit];
            const uint64_t k1 = k32[2*bit+1];

            /* Carry out the multiplication, term-by-term. Terms whose
             * contribution to the final result are entirely wiped
             * away by truncation are not included. */

            sum = k1;
            overflow = 0;
            if (!first) {
                sum *= w0;
                term(k0 * w1);
                shift32();
                term(k0 * w0);
            }
            w[1] = static_cast<uint32_t>(sum);
            shift32();

            if (first) {
                term(k0);
            }
            w[0] = static_cast<uint32_t>(sum);

            /* Debugging check: under no circumstances should it ever
             * be the case that the high-order bits of sum (including
             * detected overflow) are non-zero. That would indicate
             * that the multiplication resulted in a value of 1.0 or
             * greater, which shouldn't be possile. */
            // shift32();
            // assert(sum == 0);

            first = false;
        }
    }

    /* We now perform an approximately similar multiplication of the
     * final calculated demurrage factor by the passed in value. */
    const uint64_t v0 = static_cast<uint32_t>(value);
    const uint64_t v1 = value >> 32;

    overflow = 0;
    sum = (w[1] * v0) >> 32;
    term(w[1] * v1);
    term(w[0] * v0);
    shift32();
    term(w[0] * v1);

    /* Debugging check: having the overflow bit set at this point
     * would indicate that the demurrage calculation has resulted in
     * an amount that is greater than std::numeric_limits<int64_t>::
     * max(), which should never be possible as the demurrage factor
     * should always be a fractional number less than one. */
    // assert(overflow == 0);

    return sign * static_cast<int64_t>(sum);
}

std::string COutPoint::ToString() const
{
    return strprintf("COutPoint(%s, %u)", hash.ToString().substr(0,10), n);
}

void COutPoint::print() const
{
    LogPrintf("%s\n", ToString());
}

CTxIn::CTxIn(COutPoint prevoutIn, CScript scriptSigIn, unsigned int nSequenceIn)
{
    prevout = prevoutIn;
    scriptSig = scriptSigIn;
    nSequence = nSequenceIn;
}

CTxIn::CTxIn(uint256 hashPrevTx, unsigned int nOut, CScript scriptSigIn, unsigned int nSequenceIn)
{
    prevout = COutPoint(hashPrevTx, nOut);
    scriptSig = scriptSigIn;
    nSequence = nSequenceIn;
}

std::string CTxIn::ToString() const
{
    std::string str;
    str += "CTxIn(";
    str += prevout.ToString();
    if (prevout.IsNull())
        str += strprintf(", coinbase %s", HexStr(scriptSig));
    else
        str += strprintf(", scriptSig=%s", scriptSig.ToString().substr(0,24));
    if (nSequence != std::numeric_limits<unsigned int>::max())
        str += strprintf(", nSequence=%u", nSequence);
    str += ")";
    return str;
}

void CTxIn::print() const
{
    LogPrintf("%s\n", ToString());
}

CTxOut::CTxOut(int64_t nValueIn, CScript scriptPubKeyIn)
{
    nValue = nValueIn;
    scriptPubKey = scriptPubKeyIn;
}

uint256 CTxOut::GetHash() const
{
    return SerializeHash(*this);
}

std::string CTxOut::ToString() const
{
    return strprintf("CTxOut(nValue=%d.%08d, scriptPubKey=%s)", nValue / COIN, nValue % COIN, scriptPubKey.ToString().substr(0,30));
}

void CTxOut::print() const
{
    LogPrintf("%s\n", ToString());
}

uint256 CTransaction::GetHash() const
{
    return SerializeHash(*this);
}

bool CTransaction::IsNewerThan(const CTransaction& old) const
{
    if (vin.size() != old.vin.size())
        return false;
    for (unsigned int i = 0; i < vin.size(); i++)
        if (vin[i].prevout != old.vin[i].prevout)
            return false;

    bool fNewer = false;
    unsigned int nLowest = std::numeric_limits<unsigned int>::max();
    for (unsigned int i = 0; i < vin.size(); i++)
    {
        if (vin[i].nSequence != old.vin[i].nSequence)
        {
            if (vin[i].nSequence <= nLowest)
            {
                fNewer = false;
                nLowest = vin[i].nSequence;
            }
            if (old.vin[i].nSequence < nLowest)
            {
                fNewer = true;
                nLowest = old.vin[i].nSequence;
            }
        }
    }
    return fNewer;
}

int64_t CTransaction::GetPresentValueOfOutput(int n, int height) const
{
    if (height < refheight)
        throw std::runtime_error("CTransaction::GetPresentValueOfOutput() : destination height less than origin");
    return GetTimeAdjustedValue(vout[n].nValue, height-refheight);
}

int64_t CTransaction::GetValueOut() const
{
    int64_t nValueOut = 0;
    BOOST_FOREACH(const CTxOut& txout, vout)
    {
        nValueOut += txout.nValue;
        if (!MoneyRange(txout.nValue) || !MoneyRange(nValueOut))
            throw std::runtime_error("CTransaction::GetValueOut() : value out of range");
    }
    return nValueOut;
}

double CTransaction::ComputePriority(double dPriorityInputs, unsigned int nTxSize) const
{
    // In order to avoid disincentivizing cleaning up the UTXO set we don't count
    // the constant overhead for each txin and up to 110 bytes of scriptSig (which
    // is enough to cover a compressed pubkey p2sh redemption) for priority.
    // Providing any more cleanup incentive than making additional inputs free would
    // risk encouraging people to create junk outputs to redeem later.
    if (nTxSize == 0)
        nTxSize = ::GetSerializeSize(*this, SER_NETWORK, PROTOCOL_VERSION);
    BOOST_FOREACH(const CTxIn& txin, vin)
    {
        unsigned int offset = 41U + std::min(110U, (unsigned int)txin.scriptSig.size());
        if (nTxSize > offset)
            nTxSize -= offset;
    }
    if (nTxSize == 0) return 0.0;
    return dPriorityInputs / nTxSize;
}

std::string CTransaction::ToString() const
{
    std::string str;
    str += strprintf("CTransaction(hash=%s, ver=%d, vin.size=%u, vout.size=%u, nLockTime=%u, refheight=%u)\n",
        GetHash().ToString().substr(0,10),
        nVersion,
        vin.size(),
        vout.size(),
        nLockTime,
        refheight);
    for (unsigned int i = 0; i < vin.size(); i++)
        str += "    " + vin[i].ToString() + "\n";
    for (unsigned int i = 0; i < vout.size(); i++)
        str += "    " + vout[i].ToString() + "\n";
    return str;
}

void CTransaction::print() const
{
    LogPrintf("%s", ToString());
}

// Amount compression:
// * If the amount is 0, output 0
// * first, divide the amount (in base units) by the largest power of 10 possible; call the exponent e (e is max 9)
// * if e<9, the last digit of the resulting number cannot be 0; store it as d, and drop it (divide by 10)
//   * call the result n
//   * output 1 + 10*(9*n + d - 1) + e
// * if e==9, we only know the resulting number is not zero, so output 1 + 10*(n - 1) + 9
// (this is decodable, as d is in [1-9] and e is in [0-9])

uint64_t CTxOutCompressor::CompressAmount(uint64_t n)
{
    if (n == 0)
        return 0;
    int e = 0;
    while (((n % 10) == 0) && e < 9) {
        n /= 10;
        e++;
    }
    if (e < 9) {
        int d = (n % 10);
        assert(d >= 1 && d <= 9);
        n /= 10;
        return 1 + (n*9 + d - 1)*10 + e;
    } else {
        return 1 + (n - 1)*10 + 9;
    }
}

uint64_t CTxOutCompressor::DecompressAmount(uint64_t x)
{
    // x = 0  OR  x = 1+10*(9*n + d - 1) + e  OR  x = 1+10*(n - 1) + 9
    if (x == 0)
        return 0;
    x--;
    // x = 10*(9*n + d - 1) + e
    int e = x % 10;
    x /= 10;
    uint64_t n = 0;
    if (e < 9) {
        // x = 9*n + d - 1
        int d = (x % 9) + 1;
        x /= 9;
        // x = n
        n = x*10 + d;
    } else {
        n = x+1;
    }
    while (e) {
        n *= 10;
        e--;
    }
    return n;
}

uint256 CBlockHeader::GetHash() const
{
    return Hash(BEGIN(nVersion), END(nNonce));
}

uint256 CBlock::BuildMerkleTree() const
{
    vMerkleTree.clear();
    BOOST_FOREACH(const CTransaction& tx, vtx)
        vMerkleTree.push_back(tx.GetHash());
    int j = 0;
    for (int nSize = vtx.size(); nSize > 1; nSize = (nSize + 1) / 2)
    {
        for (int i = 0; i < nSize; i += 2)
        {
            int i2 = std::min(i+1, nSize-1);
            vMerkleTree.push_back(Hash(BEGIN(vMerkleTree[j+i]),  END(vMerkleTree[j+i]),
                                       BEGIN(vMerkleTree[j+i2]), END(vMerkleTree[j+i2])));
        }
        j += nSize;
    }
    return (vMerkleTree.empty() ? 0 : vMerkleTree.back());
}

std::vector<uint256> CBlock::GetMerkleBranch(int nIndex) const
{
    if (vMerkleTree.empty())
        BuildMerkleTree();
    std::vector<uint256> vMerkleBranch;
    int j = 0;
    for (int nSize = vtx.size(); nSize > 1; nSize = (nSize + 1) / 2)
    {
        int i = std::min(nIndex^1, nSize-1);
        vMerkleBranch.push_back(vMerkleTree[j+i]);
        nIndex >>= 1;
        j += nSize;
    }
    return vMerkleBranch;
}

uint256 CBlock::CheckMerkleBranch(uint256 hash, const std::vector<uint256>& vMerkleBranch, int nIndex)
{
    if (nIndex == -1)
        return 0;
    BOOST_FOREACH(const uint256& otherside, vMerkleBranch)
    {
        if (nIndex & 1)
            hash = Hash(BEGIN(otherside), END(otherside), BEGIN(hash), END(hash));
        else
            hash = Hash(BEGIN(hash), END(hash), BEGIN(otherside), END(otherside));
        nIndex >>= 1;
    }
    return hash;
}

void CBlock::print() const
{
    LogPrintf("CBlock(hash=%s, ver=%d, hashPrevBlock=%s, hashMerkleRoot=%s, nTime=%u, nBits=%08x, nNonce=%u, vtx=%u)\n",
        GetHash().ToString(),
        nVersion,
        hashPrevBlock.ToString(),
        hashMerkleRoot.ToString(),
        nTime, nBits, nNonce,
        vtx.size());
    for (unsigned int i = 0; i < vtx.size(); i++)
    {
        LogPrintf("  ");
        vtx[i].print();
    }
    LogPrintf("  vMerkleTree: ");
    for (unsigned int i = 0; i < vMerkleTree.size(); i++)
        LogPrintf("%s ", vMerkleTree[i].ToString());
    LogPrintf("\n");
}

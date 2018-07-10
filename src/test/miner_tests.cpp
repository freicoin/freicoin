// Copyright (c) 2011-2014 The Bitcoin Core developers
// Copyright (c) 2018 The Freicoin developers
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

#include "main.h"
#include "miner.h"
#include "uint256.h"
#include "util.h"

#include <boost/test/unit_test.hpp>

extern void SHA256Transform(void* pstate, void* pinput, const void* pinit);

BOOST_AUTO_TEST_SUITE(miner_tests)

static
struct {
    unsigned char extranonce;
    unsigned int nonce;
} blockinfo[] = {
    {1, 0x52d00042}, {0, 0x8e9502af}, {0, 0x0c9086ed}, {1, 0x4dafe8b7},
    {0, 0x2284fd8e}, {1, 0xbe19c94e}, {0, 0x944fb443}, {0, 0x918164c2},
    {0, 0x5ca9005e}, {2, 0xdfd36b8c}, {1, 0xbea0958d}, {1, 0x63157720},
    {0, 0xc7c138b1}, {1, 0x47abc96b}, {0, 0x1a41ae50}, {0, 0x33f81ee2},
    {0, 0x93d37ee6}, {0, 0xd41309ef}, {1, 0xe030f49b}, {0, 0xe92ac447},
    {2, 0x0a89381e}, {0, 0x23173160}, {0, 0x2dc1d884}, {0, 0xaba6e9b6},
    {0, 0xbaa9b8fb}, {0, 0x31d86401}, {0, 0x7ab38bc3}, {0, 0xb6a5921c},
    {1, 0x46901dbf}, {1, 0x55c74e05}, {0, 0x5236e3b6}, {0, 0xa09faea4},
    {1, 0x239feb9a}, {0, 0x10021b9a}, {1, 0x1edc56aa}, {3, 0x9d65337b},
    {0, 0x790bf7c1}, {0, 0x2512d056}, {5, 0xcfd1ad26}, {0, 0xfc101a5a},
    {0, 0x7094b9df}, {0, 0x76cb9875}, {0, 0xc2405a3d}, {0, 0x7b63fe34},
    {0, 0x0db81fd0}, {0, 0xceceadd6}, {0, 0x95f2ea4b}, {0, 0x4c77115a},
    {1, 0xa6b53f07}, {1, 0xb526245d}, {0, 0x2d4b00c8}, {1, 0xc35c0090},
    {1, 0xaada2eda}, {0, 0x3fd18fab}, {0, 0x7747abf2}, {2, 0xb0b92b17},
    {0, 0x67227e86}, {0, 0xf9fd9455}, {0, 0x69251c19}, {0, 0x633da320},
    {0, 0x8acefe47}, {0, 0xeb82586d}, {1, 0x121792ef}, {4, 0x3ef76f0e},
    {1, 0xb4f30ec8}, {0, 0x4245e33b}, {1, 0xb9bd34c0}, {0, 0x293a1297},
    {0, 0x3843f35f}, {1, 0x5f6ceef1}, {1, 0xcb3a5a97}, {3, 0xa0c5c696},
    {0, 0xce5b8825}, {0, 0xe5bad1e6}, {2, 0x2e775dcb}, {1, 0xdd7ba849},
    {0, 0x70ddc54b}, {1, 0x4d7291de}, {2, 0xdac7f375}, {0, 0xb48a1cbc},
    {0, 0x28e05f52}, {2, 0x833fba3d}, {1, 0x09260f05}, {2, 0x46c7653e},
    {2, 0x1b02eee1}, {0, 0x4c6dab99}, {0, 0x758ec784}, {1, 0x6963c9fa},
    {0, 0x8b92a0b4}, {0, 0x6c82722c}, {0, 0x09c12660}, {0, 0xd02bdc4c},
    {1, 0xb89cdf2d}, {0, 0x107ce7da}, {0, 0x525613a2}, {0, 0xbc717ed5},
    {0, 0x477812dc}, {0, 0x8a6d8f17}, {0, 0x9df124b3}, {0, 0x461e1332},
    {0, 0x0dde35c2}, {0, 0x76683cec}, {0, 0x92a5017b}, {0, 0x681fb885},
    {2, 0x617826d0}, {0, 0x0029a8e6}, {0, 0x1d3108a1}, {4, 0x33dc89e2},
    {0, 0x520883b9}, {0, 0xfb702683}
};

// NOTE: These tests rely on CreateNewBlock doing its own self-validation!
BOOST_AUTO_TEST_CASE(CreateNewBlock_validity)
{
    CScript scriptPubKey = CScript() << ParseHex("04678afdb0fe5548271967f1a67130b7105cd6a828e03909a67962e0ea1f61deb649f6bc3f4cef38c4f35504e51ec112de5c384df7ba0b8d578a4c702b6bf11d5f") << OP_CHECKSIG;
    CBlockTemplate *pblocktemplate;
    CTransaction tx,tx2;
    CScript script;
    uint256 hash;

    LOCK(cs_main);

    // Simple block creation, nothing special yet:
    BOOST_CHECK(pblocktemplate = CreateNewBlock(scriptPubKey));

    // We can't make transactions until we have inputs
    // Therefore, load 100 blocks :)
    std::vector<CTransaction*>txFirst;
    for (unsigned int i = 0; i < sizeof(blockinfo)/sizeof(*blockinfo); ++i)
    {
        CBlock *pblock = &pblocktemplate->block; // pointer for convenience
        pblock->nVersion = 2;
        pblock->nTime = chainActive.Tip()->GetMedianTimePast()+1;
        pblock->vtx[0].nVersion = 2;
        pblock->vtx[0].refheight = chainActive.Height()+1;
        pblock->vtx[0].vin[0].scriptSig = CScript();
        pblock->vtx[0].vin[0].scriptSig << static_cast<int64_t>(chainActive.Height()+1);
        pblock->vtx[0].vin[0].scriptSig << CScriptNum(blockinfo[i].extranonce);
        pblock->vtx[0].vout[0].nValue = 50 * COIN;
        pblock->vtx[0].vout[0].scriptPubKey = CScript();
        if (txFirst.size() < 2)
            txFirst.push_back(new CTransaction(pblock->vtx[0]));
        pblock->hashMerkleRoot = pblock->BuildMerkleTree();
        pblock->nNonce = blockinfo[i].nonce;
        CValidationState state;
        BOOST_CHECK(ProcessBlock(state, NULL, pblock));
        BOOST_CHECK(state.IsValid());
        pblock->hashPrevBlock = pblock->GetHash();
    }
    delete pblocktemplate;

    // Just to make sure we can still make simple blocks
    BOOST_CHECK(pblocktemplate = CreateNewBlock(scriptPubKey));
    delete pblocktemplate;

    tx.refheight = txFirst[1]->refheight;
    tx2.refheight = tx.refheight;

    // block sigops > limit: 1000 CHECKMULTISIG + 1
    tx.vin.resize(1);
    // NOTE: OP_NOP is used to force 20 SigOps for the CHECKMULTISIG
    tx.vin[0].scriptSig = CScript() << OP_0 << OP_0 << OP_0 << OP_NOP << OP_CHECKMULTISIG << OP_1;
    tx.vin[0].prevout.hash = txFirst[0]->GetHash();
    tx.vin[0].prevout.n = 0;
    tx.vout.resize(1);
    tx.vout[0].nValue = 5000000000LL;
    for (unsigned int i = 0; i < 1001; ++i)
    {
        tx.vout[0].nValue -= 1000000;
        hash = tx.GetHash();
        mempool.addUnchecked(hash, CTxMemPoolEntry(tx, 11, GetTime(), 111.0, 11));
        tx.vin[0].prevout.hash = hash;
    }
    BOOST_CHECK(pblocktemplate = CreateNewBlock(scriptPubKey));
    delete pblocktemplate;
    mempool.clear();

    // block size > limit
    tx.vin[0].scriptSig = CScript();
    // 18 * (520char + DROP) + OP_1 = 9433 bytes
    std::vector<unsigned char> vchData(520);
    for (unsigned int i = 0; i < 18; ++i)
        tx.vin[0].scriptSig << vchData << OP_DROP;
    tx.vin[0].scriptSig << OP_1;
    tx.vin[0].prevout.hash = txFirst[0]->GetHash();
    tx.vout[0].nValue = 5000000000LL;
    for (unsigned int i = 0; i < 128; ++i)
    {
        tx.vout[0].nValue -= 10000000;
        hash = tx.GetHash();
        mempool.addUnchecked(hash, CTxMemPoolEntry(tx, 11, GetTime(), 111.0, 11));
        tx.vin[0].prevout.hash = hash;
    }
    BOOST_CHECK(pblocktemplate = CreateNewBlock(scriptPubKey));
    delete pblocktemplate;
    mempool.clear();

    // orphan in mempool
    hash = tx.GetHash();
    mempool.addUnchecked(hash, CTxMemPoolEntry(tx, 11, GetTime(), 111.0, 11));
    BOOST_CHECK(pblocktemplate = CreateNewBlock(scriptPubKey));
    delete pblocktemplate;
    mempool.clear();

    // child with higher priority than parent
    tx.vin[0].scriptSig = CScript() << OP_1;
    tx.vin[0].prevout.hash = txFirst[1]->GetHash();
    tx.vout[0].nValue = 4900000000LL;
    hash = tx.GetHash();
    mempool.addUnchecked(hash, CTxMemPoolEntry(tx, 11, GetTime(), 111.0, 11));
    tx.vin[0].prevout.hash = hash;
    tx.vin.resize(2);
    tx.vin[1].scriptSig = CScript() << OP_1;
    tx.vin[1].prevout.hash = txFirst[0]->GetHash();
    tx.vin[1].prevout.n = 0;
    tx.vout[0].nValue = 5900000000LL;
    hash = tx.GetHash();
    mempool.addUnchecked(hash, CTxMemPoolEntry(tx, 11, GetTime(), 111.0, 11));
    BOOST_CHECK(pblocktemplate = CreateNewBlock(scriptPubKey));
    delete pblocktemplate;
    mempool.clear();

    // coinbase in mempool
    tx.vin.resize(1);
    tx.vin[0].prevout.SetNull();
    tx.vin[0].scriptSig = CScript() << OP_0 << OP_1;
    tx.vout[0].nValue = 0;
    hash = tx.GetHash();
    mempool.addUnchecked(hash, CTxMemPoolEntry(tx, 11, GetTime(), 111.0, 11));
    BOOST_CHECK(pblocktemplate = CreateNewBlock(scriptPubKey));
    delete pblocktemplate;
    mempool.clear();

    // invalid (pre-p2sh) txn in mempool
    tx.vin[0].prevout.hash = txFirst[0]->GetHash();
    tx.vin[0].prevout.n = 0;
    tx.vin[0].scriptSig = CScript() << OP_1;
    tx.vout[0].nValue = 4900000000LL;
    script = CScript() << OP_0;
    tx.vout[0].scriptPubKey.SetDestination(script.GetID());
    hash = tx.GetHash();
    mempool.addUnchecked(hash, CTxMemPoolEntry(tx, 11, GetTime(), 111.0, 11));
    tx.vin[0].prevout.hash = hash;
    tx.vin[0].scriptSig = CScript() << (std::vector<unsigned char>)script;
    tx.vout[0].nValue -= 1000000;
    hash = tx.GetHash();
    mempool.addUnchecked(hash, CTxMemPoolEntry(tx, 11, GetTime(), 111.0, 11));
    BOOST_CHECK(pblocktemplate = CreateNewBlock(scriptPubKey));
    delete pblocktemplate;
    mempool.clear();

    // double spend txn pair in mempool
    tx.vin[0].prevout.hash = txFirst[0]->GetHash();
    tx.vin[0].scriptSig = CScript() << OP_1;
    tx.vout[0].nValue = 4900000000LL;
    tx.vout[0].scriptPubKey = CScript() << OP_1;
    hash = tx.GetHash();
    mempool.addUnchecked(hash, CTxMemPoolEntry(tx, 11, GetTime(), 111.0, 11));
    tx.vout[0].scriptPubKey = CScript() << OP_2;
    hash = tx.GetHash();
    mempool.addUnchecked(hash, CTxMemPoolEntry(tx, 11, GetTime(), 111.0, 11));
    BOOST_CHECK(pblocktemplate = CreateNewBlock(scriptPubKey));
    delete pblocktemplate;
    mempool.clear();

    // subsidy changing
    int nHeight = chainActive.Height();
    chainActive.Tip()->nHeight = 209999;
    BOOST_CHECK(pblocktemplate = CreateNewBlock(scriptPubKey));
    delete pblocktemplate;
    chainActive.Tip()->nHeight = 210000;
    BOOST_CHECK(pblocktemplate = CreateNewBlock(scriptPubKey));
    delete pblocktemplate;
    chainActive.Tip()->nHeight = nHeight;

    // non-final txs in mempool
    SetMockTime(chainActive.Tip()->GetMedianTimePast()+1);

    // height locked
    tx.vin[0].prevout.hash = txFirst[0]->GetHash();
    tx.vin[0].scriptSig = CScript() << OP_1;
    tx.vin[0].nSequence = 0;
    tx.vout[0].nValue = 4900000000LL;
    tx.vout[0].scriptPubKey = CScript() << OP_1;
    tx.nLockTime = chainActive.Tip()->nHeight+1;
    hash = tx.GetHash();
    mempool.addUnchecked(hash, CTxMemPoolEntry(tx, 11, GetTime(), 111.0, 11));
    BOOST_CHECK(!IsFinalTx(tx, chainActive.Tip()->nHeight + 1));

    // time locked
    tx2.vin.resize(1);
    tx2.vin[0].prevout.hash = txFirst[1]->GetHash();
    tx2.vin[0].prevout.n = 0;
    tx2.vin[0].scriptSig = CScript() << OP_1;
    tx2.vin[0].nSequence = 0;
    tx2.vout.resize(1);
    tx2.vout[0].nValue = 4900000000LL;
    tx2.vout[0].scriptPubKey = CScript() << OP_1;
    tx2.nLockTime = chainActive.Tip()->GetMedianTimePast()+1;
    hash = tx2.GetHash();
    mempool.addUnchecked(hash, CTxMemPoolEntry(tx2, 11, GetTime(), 111.0, 11));
    BOOST_CHECK(!IsFinalTx(tx2));

    BOOST_CHECK(pblocktemplate = CreateNewBlock(scriptPubKey));

    // Neither tx should have make it into the template.
    BOOST_CHECK_EQUAL(pblocktemplate->block.vtx.size(), 1);
    delete pblocktemplate;

    // However if we advance height and time by one, both will.
    chainActive.Tip()->nHeight++;
    SetMockTime(chainActive.Tip()->GetMedianTimePast()+2);

    BOOST_CHECK(IsFinalTx(tx, chainActive.Tip()->nHeight + 1));
    BOOST_CHECK(IsFinalTx(tx2));

    BOOST_CHECK(pblocktemplate = CreateNewBlock(scriptPubKey));
    BOOST_CHECK_EQUAL(pblocktemplate->block.vtx.size(), 3);
    delete pblocktemplate;

    chainActive.Tip()->nHeight--;
    SetMockTime(0);

    BOOST_FOREACH(CTransaction *tx, txFirst)
        delete tx;

}

BOOST_AUTO_TEST_CASE(sha256transform_equality)
{
    unsigned int pSHA256InitState[8] = {0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a, 0x510e527f, 0x9b05688c, 0x1f83d9ab, 0x5be0cd19};


    // unsigned char pstate[32];
    unsigned char pinput[64];

    int i;

    for (i = 0; i < 32; i++) {
        pinput[i] = i;
        pinput[i+32] = 0;
    }

    uint256 hash;

    SHA256Transform(&hash, pinput, pSHA256InitState);

    BOOST_TEST_MESSAGE(hash.GetHex());

    uint256 hash_reference("0x2df5e1c65ef9f8cde240d23cae2ec036d31a15ec64bc68f64be242b1da6631f3");

    BOOST_CHECK(hash == hash_reference);
}

BOOST_AUTO_TEST_SUITE_END()

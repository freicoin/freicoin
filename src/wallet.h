// Copyright (c) 2009-2010 Satoshi Nakamoto
// Copyright (c) 2009-2013 The Bitcoin developers
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.
#ifndef BITCOIN_WALLET_H
#define BITCOIN_WALLET_H

#include "core.h"
#include "crypter.h"
#include "key.h"
#include "keystore.h"
#include "main.h"
#include "ui_interface.h"
#include "util.h"
#include "walletdb.h"

#include <algorithm>
#include <map>
#include <set>
#include <stdexcept>
#include <stdint.h>
#include <string>
#include <utility>
#include <vector>

// Settings
extern mpq nTransactionFee;
extern bool bSpendZeroConfChange;

class CAccountingEntry;
class CCoinControl;
class COutput;
class CReserveKey;
class CScript;
class CWalletTx;

/** (client) version numbers for particular wallet features */
enum WalletFeature
{
    FEATURE_BASE = 10500, // the earliest version new wallets supports (only useful for getinfo's clientversion output)

    FEATURE_WALLETCRYPT = 40000, // wallet encryption
    FEATURE_COMPRPUBKEY = 60000, // compressed public keys

    FEATURE_LATEST = 60000
};


/** A key pool entry */
class CKeyPool
{
public:
    int64_t nTime;
    CPubKey vchPubKey;

    CKeyPool()
    {
        nTime = GetTime();
    }

    CKeyPool(const CPubKey& vchPubKeyIn)
    {
        nTime = GetTime();
        vchPubKey = vchPubKeyIn;
    }

    IMPLEMENT_SERIALIZE
    (
        if (!(nType & SER_GETHASH))
            READWRITE(nVersion);
        READWRITE(nTime);
        READWRITE(vchPubKey);
    )
};

/** Address book data */
class CAddressBookData
{
public:
    std::string name;
    std::string purpose;

    CAddressBookData()
    {
        purpose = "unknown";
    }

    typedef std::map<std::string, std::string> StringMap;
    StringMap destdata;
};

/** A CWallet is an extension of a keystore, which also maintains a set of transactions and balances,
 * and provides the ability to create new transactions.
 */
class CWallet : public CCryptoKeyStore, public CWalletInterface
{
private:
    bool SelectCoins(const mpq& nTargetValue, std::set<std::pair<const CWalletTx*,unsigned int> >& setCoinsRet, mpq& nValueRet, int nRefHeight=-1, const CCoinControl *coinControl = NULL) const;

    CWalletDB *pwalletdbEncryption;

    // the current wallet version: clients below this version are not able to load the wallet
    int nWalletVersion;

    // the maximum wallet format version: memory-only variable that specifies to what version this wallet may be upgraded
    int nWalletMaxVersion;

    int64_t nNextResend;
    int64_t nLastResend;

    // Used to keep track of spent outpoints, and
    // detect and report conflicts (double-spends or
    // mutated transactions where the mutant gets mined).
    typedef std::multimap<COutPoint, uint256> TxSpends;
    TxSpends mapTxSpends;
    void AddToSpends(const COutPoint& outpoint, const uint256& wtxid);
    void AddToSpends(const uint256& wtxid);

    void SyncMetaData(std::pair<TxSpends::iterator, TxSpends::iterator>);

public:
    /// Main wallet lock.
    /// This lock protects all the fields added by CWallet
    ///   except for:
    ///      fFileBacked (immutable after instantiation)
    ///      strWalletFile (immutable after instantiation)
    mutable CCriticalSection cs_wallet;

    bool fFileBacked;
    std::string strWalletFile;

    std::set<int64_t> setKeyPool;
    std::map<CKeyID, CKeyMetadata> mapKeyMetadata;

    typedef std::map<unsigned int, CMasterKey> MasterKeyMap;
    MasterKeyMap mapMasterKeys;
    unsigned int nMasterKeyMaxID;

    CWallet()
    {
        nWalletVersion = FEATURE_BASE;
        nWalletMaxVersion = FEATURE_BASE;
        fFileBacked = false;
        nMasterKeyMaxID = 0;
        pwalletdbEncryption = NULL;
        nOrderPosNext = 0;
        nNextResend = 0;
        nLastResend = 0;
    }
    CWallet(std::string strWalletFileIn)
    {
        nWalletVersion = FEATURE_BASE;
        nWalletMaxVersion = FEATURE_BASE;
        strWalletFile = strWalletFileIn;
        fFileBacked = true;
        nMasterKeyMaxID = 0;
        pwalletdbEncryption = NULL;
        nOrderPosNext = 0;
        nNextResend = 0;
        nLastResend = 0;
    }

    std::map<uint256, CWalletTx> mapWallet;

    int64_t nOrderPosNext;
    std::map<uint256, int> mapRequestCount;

    std::map<CTxDestination, CAddressBookData> mapAddressBook;

    CPubKey vchDefaultKey;

    std::set<COutPoint> setLockedCoins;

    int64_t nTimeFirstKey;

    const CWalletTx* GetWalletTx(const uint256& hash) const;

    // check whether we are allowed to upgrade (or already support) to the named feature
    bool CanSupportFeature(enum WalletFeature wf) { AssertLockHeld(cs_wallet); return nWalletMaxVersion >= wf; }

    void AvailableCoins(std::vector<COutput>& vCoins, int nRefHeight=-1, bool fOnlyConfirmed=true, const CCoinControl *coinControl = NULL) const;
    bool SelectCoinsMinConf(const mpq& nTargetValue, int nConfMine, int nConfTheirs, std::vector<COutput> vCoins, std::set<std::pair<const CWalletTx*,unsigned int> >& setCoinsRet, mpq& nValueRet, int nRefHeight=-1) const;

    bool IsSpent(const uint256& hash, unsigned int n) const;

    bool IsLockedCoin(uint256 hash, unsigned int n) const;
    void LockCoin(COutPoint& output);
    void UnlockCoin(COutPoint& output);
    void UnlockAllCoins();
    void ListLockedCoins(std::vector<COutPoint>& vOutpts);

    // keystore implementation
    // Generate a new key
    CPubKey GenerateNewKey();
    // Adds a key to the store, and saves it to disk.
    bool AddKeyPubKey(const CKey& key, const CPubKey &pubkey);
    // Adds a key to the store, without saving it to disk (used by LoadWallet)
    bool LoadKey(const CKey& key, const CPubKey &pubkey) { return CCryptoKeyStore::AddKeyPubKey(key, pubkey); }
    // Load metadata (used by LoadWallet)
    bool LoadKeyMetadata(const CPubKey &pubkey, const CKeyMetadata &metadata);

    bool LoadMinVersion(int nVersion) { AssertLockHeld(cs_wallet); nWalletVersion = nVersion; nWalletMaxVersion = std::max(nWalletMaxVersion, nVersion); return true; }

    // Adds an encrypted key to the store, and saves it to disk.
    bool AddCryptedKey(const CPubKey &vchPubKey, const std::vector<unsigned char> &vchCryptedSecret);
    // Adds an encrypted key to the store, without saving it to disk (used by LoadWallet)
    bool LoadCryptedKey(const CPubKey &vchPubKey, const std::vector<unsigned char> &vchCryptedSecret);
    bool AddCScript(const CScript& redeemScript);
    bool LoadCScript(const CScript& redeemScript) { return CCryptoKeyStore::AddCScript(redeemScript); }

    /// Adds a destination data tuple to the store, and saves it to disk
    bool AddDestData(const CTxDestination &dest, const std::string &key, const std::string &value);
    /// Erases a destination data tuple in the store and on disk
    bool EraseDestData(const CTxDestination &dest, const std::string &key);
    /// Adds a destination data tuple to the store, without saving it to disk
    bool LoadDestData(const CTxDestination &dest, const std::string &key, const std::string &value);
    /// Look up a destination data tuple in the store, return true if found false otherwise
    bool GetDestData(const CTxDestination &dest, const std::string &key, std::string *value) const;

    bool Unlock(const SecureString& strWalletPassphrase);
    bool ChangeWalletPassphrase(const SecureString& strOldWalletPassphrase, const SecureString& strNewWalletPassphrase);
    bool EncryptWallet(const SecureString& strWalletPassphrase);

    void GetKeyBirthTimes(std::map<CKeyID, int64_t> &mapKeyBirth) const;

    /** Increment the next transaction order id
        @return next transaction order id
     */
    int64_t IncOrderPosNext(CWalletDB *pwalletdb = NULL);

    typedef std::pair<CWalletTx*, CAccountingEntry*> TxPair;
    typedef std::multimap<int64_t, TxPair > TxItems;

    /** Get the wallet's activity log
        @return multimap of ordered transactions and accounting entries
        @warning Returned pointers are *only* valid within the scope of passed acentries
     */
    TxItems OrderedTxItems(std::list<CAccountingEntry>& acentries, std::string strAccount = "");

    void MarkDirty();
    bool AddToWallet(const CWalletTx& wtxIn, bool fFromLoadWallet=false);
    void SyncTransaction(const uint256 &hash, const CTransaction& tx, const CBlock* pblock);
    bool AddToWalletIfInvolvingMe(const uint256 &hash, const CTransaction& tx, const CBlock* pblock, bool fUpdate);
    void EraseFromWallet(const uint256 &hash);
    int ScanForWalletTransactions(CBlockIndex* pindexStart, bool fUpdate = false);
    void ReacceptWalletTransactions();
    void ResendWalletTransactions();
    mpq GetBalance(int nBlockHeight=-1) const;
    mpq GetUnconfirmedBalance(int nBlockHeight=-1) const;
    mpq GetImmatureBalance(int nBlockHeight=-1) const;
    bool CreateTransaction(const std::vector<std::pair<CScript, mpq> >& vecSend, int nRefHeight,
                           CWalletTx& wtxNew, CReserveKey& reservekey, mpq& nFeeRet, std::string& strFailReason, const CCoinControl *coinControl = NULL);
    bool CreateTransaction(CScript scriptPubKey, const mpq& nValue, int nRefHeight,
                           CWalletTx& wtxNew, CReserveKey& reservekey, mpq& nFeeRet, std::string& strFailReason, const CCoinControl *coinControl = NULL);
    bool CommitTransaction(CWalletTx& wtxNew, CReserveKey& reservekey);
    std::string SendMoney(CScript scriptPubKey, const mpq& nValue, int nRefHeight, CWalletTx& wtxNew);
    std::string SendMoneyToDestination(const CTxDestination &address, const mpq& nValue, int nRefHeight, CWalletTx& wtxNew);

    bool NewKeyPool();
    bool TopUpKeyPool(unsigned int kpSize = 0);
    int64_t AddReserveKey(const CKeyPool& keypool);
    void ReserveKeyFromKeyPool(int64_t& nIndex, CKeyPool& keypool);
    void KeepKey(int64_t nIndex);
    void ReturnKey(int64_t nIndex);
    bool GetKeyFromPool(CPubKey &key);
    int64_t GetOldestKeyPoolTime();
    void GetAllReserveKeys(std::set<CKeyID>& setAddress) const;

    std::set< std::set<CTxDestination> > GetAddressGroupings();
    std::map<CTxDestination, mpq> GetAddressBalances(int nBlockHeight);

    std::set<CTxDestination> GetAccountAddresses(std::string strAccount) const;

    bool IsMine(const CTxIn& txin) const;
    mpq GetDebit(const CTxIn& txin, int nBlockHeight) const;
    bool IsMine(const CTxOut& txout) const
    {
        return ::IsMine(*this, txout.scriptPubKey);
    }
    mpq GetCredit(const CTransaction& tx, const CTxOut& txout, int nBlockHeight) const
    {
        mpq nCredit = GetPresentValue(tx, txout, nBlockHeight);
        if (!MoneyRange(nCredit))
            throw std::runtime_error("CWallet::GetCredit() : value out of range");
        return (IsMine(txout) ? nCredit : 0);
    }
    bool IsChange(const CTxOut& txout) const;
    mpq GetChange(const CTransaction& tx, const CTxOut& txout, int nBlockHeight) const
    {
        mpq nChange = GetPresentValue(tx, txout, nBlockHeight);
        if (!MoneyRange(nChange))
            throw std::runtime_error("CWallet::GetChange() : value out of range");
        return (IsChange(txout) ? nChange : 0);
    }
    bool IsMine(const CTransaction& tx) const
    {
        BOOST_FOREACH(const CTxOut& txout, tx.vout)
            if (IsMine(txout))
                return true;
        return false;
    }
    bool IsFromMe(const CTransaction& tx) const
    {
        return (GetDebit(tx,0) > 0);
    }
    mpq GetDebit(const CTransaction& tx, int nBlockHeight) const
    {
        mpq nDebit = 0;
        BOOST_FOREACH(const CTxIn& txin, tx.vin)
        {
            nDebit += GetDebit(txin, nBlockHeight);
            if (!MoneyRange(nDebit))
                throw std::runtime_error("CWallet::GetDebit() : value out of range");
        }
        return nDebit;
    }
    mpq GetCredit(const CTransaction& tx, int nBlockHeight) const
    {
        mpq nCredit = 0, nAmount;
        BOOST_FOREACH(const CTxOut& txout, tx.vout)
        {
            nAmount = GetCredit(tx, txout, nBlockHeight);
            nCredit += nAmount;
            if (!MoneyRange(nAmount) || !MoneyRange(nCredit))
                throw std::runtime_error("CWallet::GetCredit() : value out of range");
        }
        return nCredit;
    }
    mpq GetChange(const CTransaction& tx, int nBlockHeight) const
    {
        mpq nChange = 0, nAmount;
        BOOST_FOREACH(const CTxOut& txout, tx.vout)
        {
            nAmount = GetChange(tx, txout, nBlockHeight);
            nChange += nAmount;
            if (!MoneyRange(nAmount) || !MoneyRange(nChange))
                throw std::runtime_error("CWallet::GetChange() : value out of range");
        }
        return nChange;
    }
    void SetBestChain(const CBlockLocator& loc);

    DBErrors LoadWallet(bool& fFirstRunRet);
    DBErrors ZapWalletTx();

    bool SetAddressBook(const CTxDestination& address, const std::string& strName, const std::string& purpose);

    bool DelAddressBook(const CTxDestination& address);

    void UpdatedTransaction(const uint256 &hashTx);

    void Inventory(const uint256 &hash)
    {
        {
            LOCK(cs_wallet);
            std::map<uint256, int>::iterator mi = mapRequestCount.find(hash);
            if (mi != mapRequestCount.end())
                (*mi).second++;
        }
    }

    unsigned int GetKeyPoolSize()
    {
        AssertLockHeld(cs_wallet); // setKeyPool
        return setKeyPool.size();
    }

    bool SetDefaultKey(const CPubKey &vchPubKey);

    // signify that a particular wallet feature is now used. this may change nWalletVersion and nWalletMaxVersion if those are lower
    bool SetMinVersion(enum WalletFeature, CWalletDB* pwalletdbIn = NULL, bool fExplicit = false);

    // change which version we're allowed to upgrade to (note that this does not immediately imply upgrading to that format)
    bool SetMaxVersion(int nVersion);

    // get the current wallet format (the oldest client version guaranteed to understand this wallet)
    int GetVersion() { LOCK(cs_wallet); return nWalletVersion; }

    // Get wallet transactions that conflict with given transaction (spend same outputs)
    std::set<uint256> GetConflicts(const uint256& txid) const;

    /** Address book entry changed.
     * @note called with lock cs_wallet held.
     */
    boost::signals2::signal<void (CWallet *wallet, const CTxDestination
            &address, const std::string &label, bool isMine,
            const std::string &purpose,
            ChangeType status)> NotifyAddressBookChanged;

    /** Wallet transaction added, removed or updated.
     * @note called with lock cs_wallet held.
     */
    boost::signals2::signal<void (CWallet *wallet, const uint256 &hashTx,
            ChangeType status)> NotifyTransactionChanged;
};

/** A key allocated from the key pool. */
class CReserveKey
{
protected:
    CWallet* pwallet;
    int64_t nIndex;
    CPubKey vchPubKey;
public:
    CReserveKey(CWallet* pwalletIn)
    {
        nIndex = -1;
        pwallet = pwalletIn;
    }

    ~CReserveKey()
    {
        ReturnKey();
    }

    void ReturnKey();
    bool GetReservedKey(CPubKey &pubkey);
    void KeepKey();
};


typedef std::map<std::string, std::string> mapValue_t;


static void ReadOrderPos(int64_t& nOrderPos, mapValue_t& mapValue)
{
    if (!mapValue.count("n"))
    {
        nOrderPos = -1; // TODO: calculate elsewhere
        return;
    }
    nOrderPos = atoi64(mapValue["n"].c_str());
}


static void WriteOrderPos(const int64_t& nOrderPos, mapValue_t& mapValue)
{
    if (nOrderPos == -1)
        return;
    mapValue["n"] = i64tostr(nOrderPos);
}


/** A transaction with a bunch of additional info that only the owner cares about.
 * It includes any unrecorded transactions needed to link it back to the block chain.
 */
class CWalletTx : public CMerkleTx
{
private:
    const CWallet* pwallet;

public:
    mapValue_t mapValue;
    std::vector<std::pair<std::string, std::string> > vOrderForm;
    unsigned int fTimeReceivedIsTxTime;
    unsigned int nTimeReceived;  // time received by this node
    unsigned int nTimeSmart;
    char fFromMe;
    std::string strFromAccount;
    int64_t nOrderPos;  // position in ordered transaction list

    // memory only
    //mutable bool fDebitCached;
    //mutable bool fCreditCached;
    //mutable bool fImmatureCreditCached;
    //mutable bool fAvailableCreditCached;
    //mutable bool fChangeCached;
    //mutable mpq nDebitCached;
    //mutable mpq nCreditCached;
    //mutable mpq nImmatureCreditCached;
    //mutable mpq nAvailableCreditCached;
    //mutable mpq nChangeCached;

    CWalletTx()
    {
        Init(NULL);
    }

    CWalletTx(const CWallet* pwalletIn)
    {
        Init(pwalletIn);
    }

    CWalletTx(const CWallet* pwalletIn, const CMerkleTx& txIn) : CMerkleTx(txIn)
    {
        Init(pwalletIn);
    }

    CWalletTx(const CWallet* pwalletIn, const CTransaction& txIn) : CMerkleTx(txIn)
    {
        Init(pwalletIn);
    }

    void Init(const CWallet* pwalletIn)
    {
        pwallet = pwalletIn;
        mapValue.clear();
        vOrderForm.clear();
        fTimeReceivedIsTxTime = false;
        nTimeReceived = 0;
        nTimeSmart = 0;
        fFromMe = false;
        strFromAccount.clear();
        //fDebitCached = false;
        //fCreditCached = false;
        //fImmatureCreditCached = false;
        //fAvailableCreditCached = false;
        //fChangeCached = false;
        //nDebitCached = 0;
        //nCreditCached = 0;
        //nImmatureCreditCached = 0;
        //nAvailableCreditCached = 0;
        //nChangeCached = 0;
        nOrderPos = -1;
    }

    IMPLEMENT_SERIALIZE
    (
        CWalletTx* pthis = const_cast<CWalletTx*>(this);
        if (fRead)
            pthis->Init(NULL);
        char fSpent = false;

        if (!fRead)
        {
            pthis->mapValue["fromaccount"] = pthis->strFromAccount;

            WriteOrderPos(pthis->nOrderPos, pthis->mapValue);

            if (nTimeSmart)
                pthis->mapValue["timesmart"] = strprintf("%u", nTimeSmart);
        }

        nSerSize += SerReadWrite(s, *(CMerkleTx*)this, nType, nVersion,ser_action);
        std::vector<CMerkleTx> vUnused; // Used to be vtxPrev
        READWRITE(vUnused);
        READWRITE(mapValue);
        READWRITE(vOrderForm);
        READWRITE(fTimeReceivedIsTxTime);
        READWRITE(nTimeReceived);
        READWRITE(fFromMe);
        READWRITE(fSpent);

        if (fRead)
        {
            pthis->strFromAccount = pthis->mapValue["fromaccount"];

            ReadOrderPos(pthis->nOrderPos, pthis->mapValue);

            pthis->nTimeSmart = mapValue.count("timesmart") ? (unsigned int)atoi64(pthis->mapValue["timesmart"]) : 0;
        }

        pthis->mapValue.erase("fromaccount");
        pthis->mapValue.erase("version");
        pthis->mapValue.erase("spent");
        pthis->mapValue.erase("n");
        pthis->mapValue.erase("timesmart");
    )

    // make sure balances are recalculated
    void MarkDirty()
    {
        //fCreditCached = false;
        //fAvailableCreditCached = false;
        //fDebitCached = false;
        //fChangeCached = false;
    }

    void BindWallet(CWallet *pwalletIn)
    {
        pwallet = pwalletIn;
        MarkDirty();
    }

    mpq GetDebit(int nBlockHeight) const
    {
        if (vin.empty())
            return 0;
        //if (fDebitCached)
        //    return nDebitCached;
        //nDebitCached = pwallet->GetDebit(*this);
        //fDebitCached = true;
        //return nDebitCached;
        return pwallet->GetDebit(*this, nBlockHeight);
    }

    mpq GetCredit(int nBlockHeight, bool fUseCache=true) const
    {
        // Must wait until coinbase is safely deep enough in the chain before valuing it
        if (IsCoinBase() && GetBlocksToMaturity() > 0)
            return 0;
        // Don't report coins that can't be spent
        if (nRefHeight > nBlockHeight)
            return 0;

        // GetBalance can assume transactions in mapWallet won't change
        //if (fUseCache && fCreditCached)
        //    return nCreditCached;
        //nCreditCached = pwallet->GetCredit(*this);
        //fCreditCached = true;
        //return nCreditCached;
        return pwallet->GetCredit(*this, nBlockHeight);
    }

    mpq GetImmatureCredit(int nBlockHeight, bool fUseCache=true) const
    {
        if (IsCoinBase() && GetBlocksToMaturity() > 0 && IsInMainChain() && nBlockHeight >= nRefHeight)
        {
            //if (fUseCache && fImmatureCreditCached)
            //    return nImmatureCreditCached;
            //nImmatureCreditCached = pwallet->GetCredit(*this);
            //fImmatureCreditCached = true;
            //return nImmatureCreditCached;
            return pwallet->GetCredit(*this, nBlockHeight);
        }

        return 0;
    }

    mpq GetAvailableCredit(int nBlockHeight, bool fUseCache=true) const
    {
        if (pwallet == 0)
            return 0;

        // Must wait until coinbase is safely deep enough in the chain before valuing it
        if (IsCoinBase() && GetBlocksToMaturity() > 0)
            return 0;
        // Don't report coins that can't be spent
        if (nRefHeight > nBlockHeight)
            return 0;

        //if (fUseCache && fAvailableCreditCached)
        //    return nAvailableCreditCached;

        mpq nCredit = 0, nAmount;
        for (unsigned int i = 0; i < vout.size(); i++)
        {
            if (!pwallet->IsSpent(GetHash(), i))
            {
                const CTxOut &txout = vout[i];
                nAmount = pwallet->GetCredit(*this, txout, nBlockHeight);
                nCredit += nAmount;
                if (!MoneyRange(nAmount) || !MoneyRange(nCredit))
                    throw std::runtime_error("CWalletTx::GetAvailableCredit() : value out of range");
            }
        }

        //nAvailableCreditCached = nCredit;
        //fAvailableCreditCached = true;
        return nCredit;
    }


    mpq GetChange(int nBlockHeight) const
    {
        //if (fChangeCached)
        //    return nChangeCached;
        //nChangeCached = pwallet->GetChange(*this);
        //fChangeCached = true;
        //return nChangeCached;
        return pwallet->GetChange(*this, nBlockHeight);
    }

    void GetAmounts(std::list<std::pair<CTxDestination, mpq> >& listReceived,
                    std::list<std::pair<CTxDestination, mpq> >& listSent,
                    mpq& nFee, std::string& strSentAccount, int nBlockHeight) const;

    void GetAccountAmounts(const std::string& strAccount, mpq& nReceived,
                           mpq& nSent, mpq& nFee, int nBlockHeight) const;

    bool IsFromMe() const
    {
        return (GetDebit(0) > 0);
    }

    bool IsTrusted() const
    {
        // Quick answer in most cases
        if (!IsFinalTx(*this))
            return false;
        int nDepth = GetDepthInMainChain();
        if (nDepth >= 1)
            return true;
        if (nDepth < 0)
            return false;
        if (!bSpendZeroConfChange || !IsFromMe()) // using wtx's cached debit
            return false;

        // Trusted if all inputs are from us and are in the mempool:
        BOOST_FOREACH(const CTxIn& txin, vin)
        {
            // Transactions not sent by us: not trusted
            const CWalletTx* parent = pwallet->GetWalletTx(txin.prevout.hash);
            if (parent == NULL)
                return false;
            const CTxOut& parentOut = parent->vout[txin.prevout.n];
            if (!pwallet->IsMine(parentOut))
                return false;
        }
        return true;
    }

    bool WriteToDisk();

    int64_t GetTxTime() const;
    int GetRequestCount() const;

    void RelayWalletTransaction();

    std::set<uint256> GetConflicts() const;
};




class COutput
{
public:
    const CWalletTx *tx;
    int i;
    int nDepth;

    COutput(const CWalletTx *txIn, int iIn, int nDepthIn)
    {
        tx = txIn; i = iIn; nDepth = nDepthIn;
    }

    std::string ToString() const
    {
        return strprintf("COutput(%s, %d, %d) [%s]", tx->GetHash().ToString().c_str(), i, nDepth, FormatMoney(GetPresentValue(*tx, tx->vout[i], 0)).c_str());
    }

    void print() const
    {
        LogPrintf("%s\n", ToString().c_str());
    }
};




/** Private key that includes an expiration date in case it never gets used. */
class CWalletKey
{
public:
    CPrivKey vchPrivKey;
    int64_t nTimeCreated;
    int64_t nTimeExpires;
    std::string strComment;
    //// todo: add something to note what created it (user, getnewaddress, change)
    ////   maybe should have a map<string, string> property map

    CWalletKey(int64_t nExpires=0)
    {
        nTimeCreated = (nExpires ? GetTime() : 0);
        nTimeExpires = nExpires;
    }

    IMPLEMENT_SERIALIZE
    (
        if (!(nType & SER_GETHASH))
            READWRITE(nVersion);
        READWRITE(vchPrivKey);
        READWRITE(nTimeCreated);
        READWRITE(nTimeExpires);
        READWRITE(strComment);
    )
};






/** Account information.
 * Stored in wallet with key "acc"+string account name.
 */
class CAccount
{
public:
    CPubKey vchPubKey;

    CAccount()
    {
        SetNull();
    }

    void SetNull()
    {
        vchPubKey = CPubKey();
    }

    IMPLEMENT_SERIALIZE
    (
        if (!(nType & SER_GETHASH))
            READWRITE(nVersion);
        READWRITE(vchPubKey);
    )
};



/** Internal transfers.
 * Database key is acentry<account><counter>.
 */
class CAccountingEntry
{
public:
    std::string strAccount;
    mpq nCreditDebit;
    int64_t nTime;
    std::string strOtherAccount;
    std::string strComment;
    int32_t nRefHeight;
    mapValue_t mapValue;
    int64_t nOrderPos;  // position in ordered transaction list
    uint64_t nEntryNo;

    CAccountingEntry()
    {
        SetNull();
    }

    void SetNull()
    {
        nCreditDebit = 0;
        nTime = 0;
        strAccount.clear();
        strOtherAccount.clear();
        strComment.clear();
        nRefHeight = 0;
        nOrderPos = -1;
    }

    IMPLEMENT_SERIALIZE
    (
        CAccountingEntry& me = *const_cast<CAccountingEntry*>(this);
        if (!(nType & SER_GETHASH))
            READWRITE(nVersion);
        // Note: strAccount is serialized as part of the key, not here.
        READWRITE(nCreditDebit);
        READWRITE(nTime);
        READWRITE(strOtherAccount);

        if (!fRead)
        {
            WriteOrderPos(nOrderPos, me.mapValue);

            if (!(mapValue.empty() && _ssExtra.empty()))
            {
                CDataStream ss(nType, nVersion);
                ss.insert(ss.begin(), '\0');
                ss << mapValue;
                ss.insert(ss.end(), _ssExtra.begin(), _ssExtra.end());
                me.strComment.append(ss.str());
            }
        }

        READWRITE(strComment);
        READWRITE(nRefHeight);

        size_t nSepPos = strComment.find("\0", 0, 1);
        if (fRead)
        {
            me.mapValue.clear();
            if (std::string::npos != nSepPos)
            {
                CDataStream ss(std::vector<char>(strComment.begin() + nSepPos + 1, strComment.end()), nType, nVersion);
                ss >> me.mapValue;
                me._ssExtra = std::vector<char>(ss.begin(), ss.end());
            }
            ReadOrderPos(me.nOrderPos, me.mapValue);
        }
        if (std::string::npos != nSepPos)
            me.strComment.erase(nSepPos);

        me.mapValue.erase("n");
    )

private:
    std::vector<char> _ssExtra;
};

#endif

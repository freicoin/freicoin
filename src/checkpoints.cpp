// Copyright (c) 2009-2014 The Bitcoin developers
// Copyright (c) 2012-2018 The Freicoin developers
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

#include "checkpoints.h"

#include "main.h"
#include "uint256.h"

#include <stdint.h>

#include <boost/assign/list_of.hpp> // for 'map_list_of()'
#include <boost/foreach.hpp>

namespace Checkpoints
{
    typedef std::map<int, uint256> MapCheckpoints;

    // How many times we expect transactions after the last checkpoint to
    // be slower. This number is a compromise, as it can't be accurate for
    // every system. When reindexing from a fast disk with a slow CPU, it
    // can be up to 20, while when downloading from a slow network with a
    // fast multicore CPU, it won't be much higher than 1.
    static const double SIGCHECK_VERIFICATION_FACTOR = 5.0;

    struct CCheckpointData {
        const MapCheckpoints *mapCheckpoints;
        int64_t nTimeLastCheckpoint;
        int64_t nTransactionsLastCheckpoint;
        double fTransactionsPerDay;
    };

    bool fEnabled = true;

    // What makes a good checkpoint block?
    // + Is surrounded by blocks with reasonable timestamps
    //   (no blocks before with a timestamp after, none after with
    //    timestamp before)
    // + Contains no strange transactions
    static MapCheckpoints mapCheckpoints =
        boost::assign::map_list_of
        (10080, uint256("0x00000000003ff9c4b806639ec4376cc9acafcdded0e18e9dbcc2fc42e8e72331"))
        (20160, uint256("0x0000000000009708ba48a52599295db8b9ec5d29148561e6ac850af765026528"))
        (28336, uint256("0x000000000000cc374a984c0deec9aed6fff764918e2cfd4be6670dd4d5292ccb")) // Difficulty adjustment hard-fork activation
        (30240, uint256("0x0000000000004acbe1ed430d4a70d8a9ac62daa849e0bc708da52eeba8f39afc"))
        (40320, uint256("0x0000000000008ad31a52a3e749bd5c477aa3da18cc0acd3e3d944b5edc58e7bd"))
        (50400, uint256("0x0000000000000e2e3686f1eb852222ffff33a403947478bea143ed88c81fdd87"))
        (60480, uint256("0x000000000000029a0d1df882d1ddd15387855d5f904127c25359f8bdc6425928"))
        (70560, uint256("0x00000000000002b41cead9ce01c519a56998db8a715aae518f4b72403d6dc95a"))
        (80640, uint256("0x00000000000001c20353e3df80d35c8348bc07940d5e08d4740372ef45a4474f"))
        (90720, uint256("0x00000000000006c884dfe4e81504fd8eaf9d7d770a04dbdafb2cbf5ad7ab64c6"))
        (100800, uint256("0x00000000000004dc5badc155de4d07b4c09b9f3ecfdfdaf71576f3d2be192ea3"))
        (110880, uint256("0x0000000000000ef59288c01fcef9c26b0457bc93ca106d06bb10cd5dfad7fca9"))
        (120960, uint256("0x00000000000002968c68497ec2a7ec6b5030202dbf874126a65e437f53c03bea"))
        (131040, uint256("0x0000000000000bf11095c39e143ed02508132e48e040db791a0e7ed73378e7ed"))
        (141120, uint256("0x000000000000016331fe98568de3673c7c983f10d4ceab0f75d928acc0378001"))
        (151200, uint256("0x000000000000047df778aaa84d03cf2d8f9b51ef530a7d3708bfd6a9e0dd5d41"))
        (161280, uint256("0x00000000000021b3611f18840adf738c4a0c8de1479f53721c29a899620a4064"))
        (171360, uint256("0x00000000000037920bd0a1f13c579ca7c6ade2ef56b19027dd4408c292e5882f"))
        (181440, uint256("0x00000000000001d49e7ad75303c6217d6205cd51d5c1cc494427418385976d44"))
        (191520, uint256("0x000000000000034be18ec2f1ca59bbc70d54a9cb10fc7230122297c037f441ee"))
        (201600, uint256("0x00000000000004bb0cc14b70f9fd72900a6839731892d959764dd89615a5535a"))
        (211680, uint256("0x00000000000000e1156dafc83bc94c1508fbaa2ec1b1440aeceac7dfc0944664"))
        (221760, uint256("0x00000000000000a7ca764843bedea1e8c7eb2e22390aca9d133caafcd0842ea1"))
        (230832, uint256("0x000000000000005ff92cdcd6c9150abcce02b1af116bcbda4ef5096804a4713c"))
        ;
    static const CCheckpointData data = {
        &mapCheckpoints,
        1531667613, // * UNIX timestamp of last checkpoint block
        884466,     // * total number of transactions between genesis and last checkpoint
                    //   (the tx=... number in the SetBestChain debug.log lines)
        558.55      // * estimated number of transactions per day after checkpoint
    };

    static MapCheckpoints mapCheckpointsTestnet =
        boost::assign::map_list_of
        (0, uint256("0x00000000a52504ffe3420a43bd385ef24f81838921a903460b235d95f37cd65e"))
        ;
    static const CCheckpointData dataTestnet = {
        &mapCheckpointsTestnet,
        1356123600,
        1,
        300
    };

    static MapCheckpoints mapCheckpointsRegtest =
        boost::assign::map_list_of
        ( 0, uint256("0f9188f13cb7b2c71f2a335e3a4fc328bf5beb436012afca590b1a11466e2206"))
        ;
    static const CCheckpointData dataRegtest = {
        &mapCheckpointsRegtest,
        0,
        0,
        0
    };

    const CCheckpointData &Checkpoints() {
        if (Params().NetworkID() == CChainParams::TESTNET)
            return dataTestnet;
        else if (Params().NetworkID() == CChainParams::MAIN)
            return data;
        else
            return dataRegtest;
    }

    bool CheckBlock(int nHeight, const uint256& hash)
    {
        if (!fEnabled)
            return true;

        const MapCheckpoints& checkpoints = *Checkpoints().mapCheckpoints;

        MapCheckpoints::const_iterator i = checkpoints.find(nHeight);
        if (i == checkpoints.end()) return true;
        return hash == i->second;
    }

    // Guess how far we are in the verification process at the given block index
    double GuessVerificationProgress(CBlockIndex *pindex, bool fSigchecks) {
        if (pindex==NULL)
            return 0.0;

        int64_t nNow = time(NULL);

        double fSigcheckVerificationFactor = fSigchecks ? SIGCHECK_VERIFICATION_FACTOR : 1.0;
        double fWorkBefore = 0.0; // Amount of work done before pindex
        double fWorkAfter = 0.0;  // Amount of work left after pindex (estimated)
        // Work is defined as: 1.0 per transaction before the last checkpoint, and
        // fSigcheckVerificationFactor per transaction after.

        const CCheckpointData &data = Checkpoints();

        if (pindex->nChainTx <= data.nTransactionsLastCheckpoint) {
            double nCheapBefore = pindex->nChainTx;
            double nCheapAfter = data.nTransactionsLastCheckpoint - pindex->nChainTx;
            double nExpensiveAfter = (nNow - data.nTimeLastCheckpoint)/86400.0*data.fTransactionsPerDay;
            fWorkBefore = nCheapBefore;
            fWorkAfter = nCheapAfter + nExpensiveAfter*fSigcheckVerificationFactor;
        } else {
            double nCheapBefore = data.nTransactionsLastCheckpoint;
            double nExpensiveBefore = pindex->nChainTx - data.nTransactionsLastCheckpoint;
            double nExpensiveAfter = (nNow - pindex->nTime)/86400.0*data.fTransactionsPerDay;
            fWorkBefore = nCheapBefore + nExpensiveBefore*fSigcheckVerificationFactor;
            fWorkAfter = nExpensiveAfter*fSigcheckVerificationFactor;
        }

        return fWorkBefore / (fWorkBefore + fWorkAfter);
    }

    int GetTotalBlocksEstimate()
    {
        if (!fEnabled)
            return 0;

        const MapCheckpoints& checkpoints = *Checkpoints().mapCheckpoints;

        return checkpoints.rbegin()->first;
    }

    CBlockIndex* GetLastCheckpoint(const std::map<uint256, CBlockIndex*>& mapBlockIndex)
    {
        if (!fEnabled)
            return NULL;

        const MapCheckpoints& checkpoints = *Checkpoints().mapCheckpoints;

        BOOST_REVERSE_FOREACH(const MapCheckpoints::value_type& i, checkpoints)
        {
            const uint256& hash = i.second;
            std::map<uint256, CBlockIndex*>::const_iterator t = mapBlockIndex.find(hash);
            if (t != mapBlockIndex.end())
                return t->second;
        }
        return NULL;
    }
}

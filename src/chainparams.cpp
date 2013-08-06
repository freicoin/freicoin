// Copyright (c) 2010 Satoshi Nakamoto
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

#include "chainparams.h"

#include "assert.h"
#include "core.h"
#include "protocol.h"
#include "util.h"

#include <boost/assign/list_of.hpp>

using namespace boost::assign;

//
// Main network
//

unsigned int pnSeed[] =
{
    0x0b57212d, 0x3ef77dd4, 0x6419eaad, 0x35f77dd4, 0x28f77dd4, 0x65200092, 0x1736fa54, 0x3d72343c,
    0x529a1347, 0x2d3de442, 0x71690acc, 0x43f81155, 0xd250c7c6, 0x13cca445, 0xf4fc7d4c, 0xf94530c7,
    0x13b0dc4e, 0x717a5d40, 0x14f5088d, 0xcf12f363, 0xd8b11dad, 0xec9600c0, 0xf49da26c, 0x0b57d759,
    0x17c1ea52, 0xd737654a, 0x845c5545, 0x2a2f92d4, 0xce78637a, 0xdcbbb97c, 0x115a2705, 0xf0f7cd6d,
    0x95188cd1, 0xf1f7cd6d, 0x839dfd18, 0x3587e24c, 0x59029732, 0xdf311a5c, 0x3f910448, 0x9628147b,
    0x47720a18, 0x33a76444, 0xeaa1b456, 0xd441ec47, 0x5dc9fc6c, 0xd29278ae, 0x3a6e13c7, 0xa741715e,
    0x13045f41, 0x819d105f, 0x9aa8b046, 0x94c1d662, 0xc773d75a, 0x3edf5a92, 0x7e84154c, 0xf50083d3,
    0xa60bad71, 0xdea293d9, 0x75f9f8ad, 0x2b3f1118, 0xeb63c04a, 0x43c515ae, 0xe74abd43, 0xeb5c0e6c,
    0x9cd2048e, 0x69fa4f05, 0xfb075332, 0x13b42942, 0xd169493e, 0xfe418256, 0x2a2c3a5d, 0x2d077144,
    0x7c210144, 0x2dfebcd8, 0xce887b46, 0x12decd48, 0xb399073a, 0x24f3ad43, 0x7e5fbb6a, 0x9e7d1f4c,
    0x632d19ad, 0x8f44bf47, 0xbda8e648, 0x9e29cc48, 0xb82d5d59, 0xd5625232, 0x8f895e02, 0xcb79f447,
    0xc100c452, 0xc1366c4e, 0x2360a12e, 0x55144880, 0x26457757, 0x1e163bd8, 0x263b9c18, 0x80b25e47,
    0x9a59ac18, 0xe742a22e, 0xa9258f56, 0xa234534b, 0x0772c125, 0xc9f697be, 0xc87efa4d, 0x7fda073a,
    0x8b5aa851, 0x7f59031b, 0x75eb4f05, 0x6689d957, 0x3767e4cf, 0x5146e369, 0xba274542, 0x128306b8,
    0x87c009b0, 0xc4d642ad, 0xf7c1947c, 0x37f1a545, 0xfd5b484b, 0x09693ac6, 0x4858d5cb, 0x74936b7a,
    0xc3ed985b, 0x02d3fb45, 0x4e21a94d, 0xee95105f, 0x716532d2, 0xe19d305f, 0x3f4dd8b4, 0x34a50132,
    0x9fb4a356, 0xef1e0798, 0x4ce97118, 0xcdf65bd5, 0x96f01dad, 0x5c624aae, 0x13f05847, 0x99da20b2,
    0xbd6da8bc, 0x21af105f, 0xec1883d3, 0x227a1581, 0x3ac2764a, 0x6b02515d, 0x651e1151, 0x0ddf0fcc,
    0x259f5b4c, 0xd31a8132, 0x2457967a, 0x606c7e60, 0x12ace747, 0x8e31f37b, 0x08065f41, 0xe7784746,
    0xa7c72c46, 0x176cad71, 0x909da26c, 0xfd1fc647, 0x61d6ad5e, 0x920aa565, 0x3de75d02, 0xf8213743,
    0x74ba5f51, 0xe46c7257, 0x8d0099c1, 0x2f1647ae, 0x2b4f6458, 0x1713116c, 0x49065f41, 0x3627405e,
    0x4a54c854, 0x92151ab0, 0x3a5bdf50, 0xb545cc82, 0xb8b9b12e, 0x31301a5c, 0xf1776d50, 0xb571211b,
    0x1d61405e, 0x4518042e, 0x03064132, 0x5c64405e, 0x9ab709d8, 0xf61bfd53, 0x1634b043, 0x57f06f5f,
    0x044806d1, 0xcfcfe47a, 0x2c227158, 0x6fab8bd5, 0x0c987057, 0xabba09d8, 0xb9570932, 0x0220e83f,
    0x5502515d, 0xb457b91f, 0xce920940, 0x7a422452, 0x30bd03ae, 0xe1c6974e, 0x1b079d56, 0x5d84b75d,
    0x110793d3, 0xe9a8a4ad, 0x3ce19ec2, 0x61a4cc47, 0x50b9117a, 0x1ce34650, 0xcaaeba62, 0x77e6d445,
    0x9a7f4cad, 0x600ecd0c, 0x26aab259, 0x7b8ad0b2, 0x7a6b095a, 0x55cc445e, 0x4e0493b8, 0x84ef0e18,
    0x52d6c3c7, 0xb5317257, 0x5189dbcb, 0xb9858f3e, 0xca9e604a, 0xc735ce57, 0xc2d75343, 0xd535a565,
    0x4ce2455e, 0xdf4c1162, 0x4f8f6661, 0x808f082e, 0xbda6695f, 0x48046663, 0xa9b5bf48, 0x24f0edbc,
    0x0fa93ead, 0x8a4a744c, 0xdc2d282e, 0x6c84e5be, 0x95cde7bc, 0xb1376c7a, 0x3d1e7357, 0x542fe405,
    0xce882660, 0x6877a64f, 0x23ec195f, 0x3dd2261b, 0xb1287057, 0x13be394d, 0xd7a15b63, 0x6e32a97c,
    0xd7ca1c62, 0x90024c73, 0x77895e02, 0x7a05a74f, 0x5c58ac45, 0x289c0940, 0xcb920940, 0xf00e5e02,
    0x0eab0ccb, 0x2391f7da, 0x2a15a347, 0xb62cabd8, 0x4612d254, 0xf170f976, 0x05e9e854, 0x112a925b,
    0x8325e379, 0x5da17125, 0x885908d9, 0x8ea50132, 0x19d6d2b2, 0x6db38151, 0xeb67ad71, 0xef6dcd44,
    0xce5d88af, 0x56135edf, 0x2eb8b95a, 0x9f9a456f, 0x1952135e, 0xbf839bb8, 0x555b7158, 0xa4c24073,
    0xcfb3b65b, 0xd64f1618, 0x1af23aae, 0x4689cd5a, 0xaf455d02, 0x7873aa7c, 0xfa75c3d1, 0x24adf959,
    0xd622c0be, 0x489d6cda, 0x3b024a18, 0xb2837645, 0xbf943573, 0x6253ca50, 0x8bc67125, 0x2e19c647,
    0x77967045, 0xc924a64f, 0xe6a3e9bc, 0xe6cefb3a, 0x4e30b947, 0x18fb30ae, 0x78ada12e, 0x33144a7d,
    0x3440ff4d, 0x86fd1017, 0x041854b2, 0x2574cd5c, 0x3ebbf854, 0xc59bc454, 0x285a624f, 0x9ae1aa43,
    0x93240032, 0x4900e35a, 0x7f1e405e, 0x77045f41, 0xba36ed5c, 0xdbc01d45, 0xbfd4665e, 0x2464e36d,
    0xb4004ea6, 0x450b3cae, 0x61682fd5, 0x667a4746, 0xadb0d75b, 0x2b6c5ac6, 0x97db261b, 0x03b6da18,
    0xdb810544, 0x4863e079, 0xa2376772, 0x68240032, 0xb7755a92, 0xa6b913d8, 0x486cb95a, 0x37fab956,
    0x8d6dad71, 0x3504ca47, 0xf307b74b, 0x442b5661, 0x01a22b50, 0xac3dd32e, 0xc1ba0eb0, 0xaeacc58e,
    0xe1e10218, 0xd5d0246c, 0xe5895e02, 0x8b455d02, 0x067d7a5b, 0xd9842660, 0xd4fa1853, 0xc03bde79,
    0xb42e1f53, 0xec920940, 0x8add261b, 0x051ba85e, 0xe07bd66f, 0xdddbd76d, 0xc738294d, 0xbcd992b8,
    0x9d025075, 0x45c16cb4, 0xd7cd54c6, 0x34fc9356, 0x5d37f951, 0xe3777945, 0xa27d0bad, 0xb0927058,
    0xbf30d262, 0x7116ce5c, 0x2977e697, 0x30e6cb5d, 0xb722ea62, 0x9762147b, 0xa18c0a4c, 0x141621b2,
    0xbcff492e, 0x40a6b75d, 0xc3d7261b, 0x36eff476, 0x875a5e46, 0x855f5848, 0x93a2e9bc, 0x749aeab2,
    0x9776365c, 0xddb1fd53, 0x9fd386cf, 0x96cb2544, 0xa9029056, 0xc284063a, 0x5845265a, 0x1db6d259,
    0xe1920940, 0x7097ca7b, 0x79bc43ad, 0x4149bd58, 0x601df9ac, 0x76fae718, 0xaa212144, 0xdf934358,
    0x4f373fca, 0xc91b3f5c, 0xf35cbe46, 0x3d1b4c90, 0xf4aaf959, 0xf7b9bf43, 0xad905375, 0x6e47f718,
    0x98881f5f, 0x9ef2fbd9, 0xb9ccb742, 0xbce0fbd9, 0x0a9b7125, 0x62e1fbd9, 0xbab49356, 0x5c509b56,
    0xba72f976, 0x30c9cb5d, 0x6937282e, 0x5db857d4, 0xad4c9b52, 0xe229fb18, 0x75e35b45, 0xdf866e57,
    0xa53ef671, 0x23982c6c, 0xfd1a7163, 0x60d1c35e, 0x3a6e3bcb, 0x8f60e42e, 0xc2611a5f, 0x5c7be24c,
    0x32456459, 0x391db51f, 0x77d71b4d, 0x694d3c54, 0x912db51f, 0x08d7a373, 0xc7a31755, 0xf4b2865f,
    0x59e1ee54, 0x25f51b5c, 0x5a38787c, 0xabf2492e, 0x77aa3505, 0x70ad695f, 0xc38978bc, 0xcf73a347,
    0xae08afbe, 0xc2950618, 0x7f27cf52, 0xbfd5261b, 0xcc6321d1, 0x7f3ba565, 0xc2afc463, 0x9492375f,
    0x5de5455e, 0x80e24e18, 0x07e5d445, 0xe2f559d1, 0x267c924e, 0xce62d450, 0x705d4bb2, 0x28f6b23a,
    0xf8c1b51f, 0xd0415418, 0x93b25518, 0xb0114d5d, 0xef4e1618, 0xcd5b0244, 0xa2961853, 0xe197273a,
    0x82a1a071, 0x9d227c5c, 0x7e5ca97c, 0x9be8cb5d, 0x59fd6f5f, 0xa8243373, 0x17001418, 0x4d218d5e,
    0x9627484b, 0x4fa1014c, 0x56483d56, 0x082f9bde, 0xb09a9356, 0x971e08af, 0xc2557046, 0x90d1a4bc,
    0xfd3d3492, 0xdec7cb5d, 0xdac8c651, 0xa0cd445f, 0x54a0f45e, 0x66555d48, 0xef7ba97c, 0x7077654d,
    0xaf30bb6a, 0xcaead648, 0xac0060ab, 0x12eb0953, 0x71e2b74c, 0xb1c1cb5d, 0x58566553, 0x94b45ad0,
    0xcc26334a, 0x6a78645c, 0xbedc7eae, 0x3d7eea50, 0x89c6e6be, 0x7ed34073, 0xfa029256, 0x2c40974e,
    0x44e5cb5d, 0x49283d18, 0xdd2c3aae, 0x2c6ab51f, 0x48426d2e, 0xa680374f, 0xcb337b7c, 0x58f6105f,
    0x27e01325, 0x10040a3c, 0x770193b8, 0x6e190e70, 0x7710fc18, 0x676acd5c, 0xab303755, 0x4997945b,
    0xe973a32e, 0xe6d151bc, 0x0d07d66d, 0x73af492e, 0xd1766cb4, 0x59a6154c, 0x9c017c62, 0xdcc6d55a,
    0x27965a54, 0x3f1643b0, 0x6249df6d, 0xcdcb3b55, 0xbe79d66f, 0x099ebe5a, 0x45f91b6c, 0x4d473e51,
    0x31e5a756, 0x9289f37b, 0xa893af43, 0xdcd7645c, 0x3ef6ce5c, 0x1d66acca, 0xf6bb956d, 0x8062ca0e,
    0x2ee0b55e, 0x68d5261b, 0x26032545, 0xd7019056, 0x78e66279, 0x186a62ab, 0xec9c7057, 0x818aa643,
    0x4fe9cb5d, 0x45a4b75d, 0xeca0bb40, 0x7c36645c, 0x8a2e282e, 0xecf21d41, 0x4e208d5e, 0x55dcf845,
    0x3df7bc57, 0x57bd445e, 0x957d69bc, 0xce34f359, 0x5a31885d, 0x2b14645c, 0xf0d79b51, 0xd6df261b,
    0xa111b23a, 0xdec3a959, 0xc3c6c257, 0xdf8e8a50, 0x2de00c44, 0x6fa09c3b, 0x89b9febc, 0xeb9e76b0,
    0xe9df261b, 0xc6f0aead, 0xdbe881de, 0xb6cdc547, 0xbcfc58b6, 0xdf158571, 0x872cab56, 0x1dc91c59,
    0x4227b2d5, 0x1aa6b75d, 0x1074b51f, 0x74ce492e, 0x64f88e62, 0x251e3156, 0x11a5515d, 0xe90593b8,
    0x2360d6cb, 0xe29f8c96, 0x73b8ec4d, 0x277cee55, 0xe4104c73, 0x53227f3b, 0x6d04e6bc, 0xbf8f3555,
};

class CMainParams : public CChainParams {
public:
    CMainParams() {
        // The message start string is designed to be unlikely to occur in normal data.
        // The characters are rarely used upper ASCII, not valid as UTF-8, and produce
        // a large 4-byte int at any alignment.
        pchMessageStart[0] = 0x2c;
        pchMessageStart[1] = 0xfe;
        pchMessageStart[2] = 0x7e;
        pchMessageStart[3] = 0x6d;
        vAlertPubKey = ParseHex("04fc9702847840aaf195de8442ebecedf5b095cdbb9bc716bda9110971b28a49e0ead8564ff0db22209e0374782c093bb899692d524e9d6a6956e7c5ecbcd68284");
        nDefaultPort = 8639;
        nRPCPort = 8638;
        bnProofOfWorkLimit = CBigNum(~uint256(0) >> 32);
        nSubsidyHalvingInterval = 210000;

        // Build the genesis block. Note that the output of the genesis coinbase cannot
        // be spent as it did not originally exist in the database.
        //
        // CBlock(hash=000000000019d6, ver=1, hashPrevBlock=00000000000000, hashMerkleRoot=4a5e1e, nTime=1231006505, nBits=1d00ffff, nNonce=2083236893, vtx=1)
        //   CTransaction(hash=4a5e1e, ver=1, vin.size=1, vout.size=1, nLockTime=0)
        //     CTxIn(COutPoint(000000, -1), coinbase 04ffff001d0104455468652054696d65732030332f4a616e2f32303039204368616e63656c6c6f72206f6e206272696e6b206f66207365636f6e64206261696c6f757420666f722062616e6b73)
        //     CTxOut(nValue=50.00000000, scriptPubKey=0x5F1DF16B2B704C8A578D0B)
        //   vMerkleTree: 4a5e1e
        const char* pszTimestamp = "Telegraph 27/Jun/2012 Barclays hit with \xc2\xa3""290m fine over Libor fixing";
        CTransaction txNew;
        txNew.nVersion = 2;
        txNew.refheight = 0;
        txNew.vin.resize(1);
        txNew.vout.resize(8);
        txNew.vin[0].scriptSig = CScript()
            << 486604799
            << CScriptNum(4)
            << vector<unsigned char>(
                   (const unsigned char*)pszTimestamp,
                   (const unsigned char*)pszTimestamp + strlen(pszTimestamp));
        txNew.vout[0].nValue = 25453671561LL;
        txNew.vout[0].scriptPubKey = CScript()
            << ParseHex("04678afdb0fe5548271967f1a67130b7105cd6a828e03909a67962e0ea1f61deb649f6bc3f4cef38c4f35504e51ec112de5c384df7ba0b8d578a4c702b6bf11d5f")
            << OP_CHECKSIG;
        txNew.vout[1].nValue = 1LL;
        txNew.vout[1].scriptPubKey = CScript()
            << uint256("0x000000000000042d1bc432a92c42c186297799da1a7b878d79edc5e080d12950")
            << OP_DROP
            << OP_FALSE;
        const char* pszMessage2 = "\
Metals were an implicitly abusive agreement.\n\
Modern \"paper\" is a flawed tool, its engineering is a nest of leeches.\n\
The old money is obsolete.\n\
Let the individual monetize its credit without cartel intermediaries.\n\
Give us a rent-less cash so we can be free for the first time.\n\
Let this be the awaited dawn.";
        txNew.vout[2].nValue = 1LL;
        txNew.vout[2].scriptPubKey = CScript()
            << ParseHex("202020")
            << OP_DROP
            << vector<unsigned char>(
                   (const unsigned char*)pszMessage2,
                   (const unsigned char*)pszMessage2 + strlen(pszMessage2))
            << OP_DROP
            << OP_DUP
            << OP_HASH160
            << ParseHex("0ef0f9d19a653023554146a866238b8822bc84df")
            << OP_EQUALVERIFY
            << OP_CHECKSIG;
        const char* pszMessage3 = "\
\"Let us calculate, without further ado, in order to see who is right.\" --Gottfried Wilhelm Leibniz\n\
\xce\xbe\xc2\xb4\xef\xbd\xa5\xe2\x88\x80\xef\xbd\xa5`\xef\xbc\x89\xe3\x80\x80\xe3\x80\x80\xe3\x80\x80\xe3\x80\x80  n\n\
\xef\xbf\xa3\xe3\x80\x80\xe3\x80\x80\xe3\x80\x80  \xef\xbc\xbc\xe3\x80\x80\xe3\x80\x80  \xef\xbc\x88 E\xef\xbc\x89 good job, maaku!\n\
\xef\xbe\x8c\xe3\x80\x80\xe3\x80\x80\xe3\x80\x80  /\xe3\x83\xbd \xe3\x83\xbd_\xef\xbc\x8f\xef\xbc\x8f";
        txNew.vout[3].nValue = 1LL;
        txNew.vout[3].scriptPubKey = CScript()
            << ParseHex("2020202020202020")
            << OP_DROP
            << vector<unsigned char>(
                   (const unsigned char*)pszMessage3,
                   (const unsigned char*)pszMessage3 + strlen(pszMessage3))
            << OP_DROP
            << OP_DUP
            << OP_HASH160
            << ParseHex("c26be5ec809aa4bf6b30aa89823cff7cedc3679a")
            << OP_EQUALVERIFY
            << OP_CHECKSIG;
        const char* pszMessage4 = "Ich w\xc3\xbc""nsche Freicoin viel Erfolg zum Nutzen der 99 Prozent!";
        txNew.vout[4].nValue = 1LL;
        txNew.vout[4].scriptPubKey = CScript()
            << ParseHex("202020202020")
            << OP_DROP
            << vector<unsigned char>(
                   (const unsigned char*)pszMessage4,
                   (const unsigned char*)pszMessage4 + strlen(pszMessage4))
            << OP_DROP
            << OP_DUP
            << OP_HASH160
            << ParseHex("2939acd60037281a708eb11e4e9eda452c029eca")
            << OP_EQUALVERIFY
            << OP_CHECKSIG;
        const char* pszMessage5 = "\"The value of a man should be seen in what he gives and not in what he is able to receive.\" --Albert Einstein";
        txNew.vout[5].nValue = 1LL;
        txNew.vout[5].scriptPubKey = CScript()
            << ParseHex("20202020202020202020202020")
            << OP_DROP
            << vector<unsigned char>(
                   (const unsigned char*)pszMessage5,
                   (const unsigned char*)pszMessage5 + strlen(pszMessage5))
            << OP_DROP
            << OP_DUP
            << OP_HASH160
            << ParseHex("f9ca5caab4bda4dc28b5556aa79a2eec0447f0bf")
            << OP_EQUALVERIFY
            << OP_CHECKSIG;
        const char* pszMessage6 = "\"An army of principles can penetrate where an army of soldiers cannot.\" --Thomas Paine";
        txNew.vout[6].nValue = 1LL;
        txNew.vout[6].scriptPubKey = CScript()
            << ParseHex("202020202020202020202020")
            << OP_DROP
            << vector<unsigned char>(
                   (const unsigned char*)pszMessage6,
                   (const unsigned char*)pszMessage6 + strlen(pszMessage6))
            << OP_DROP
            << OP_DUP
            << OP_HASH160
            << ParseHex("08f320cbb41a1ae25b794f6175f96080681989f3")
            << OP_EQUALVERIFY
            << OP_CHECKSIG;
        txNew.vout[7].nValue = 49603174604LL;
        txNew.vout[7].scriptPubKey = CScript()
            << OP_DUP
            << OP_HASH160
            << ParseHex("85e54144c4020a65fa0a8fdbac8bba75dbc2fd00")
            << OP_EQUALVERIFY
            << OP_CHECKSIG;
        genesis.vtx.push_back(txNew);
        genesis.hashPrevBlock = 0;
        genesis.hashMerkleRoot = genesis.BuildMerkleTree();
        genesis.nVersion = 1;
        genesis.nTime    = 1356123600;
        genesis.nBits    = 0x1d00ffff;
        genesis.nNonce   =  278229610;

        hashGenesisBlock = genesis.GetHash();
        assert(hashGenesisBlock == uint256("0x000000005b1e3d23ecfd2dd4a6e1a35238aa0392c0a8528c40df52376d7efe2c"));
        assert(genesis.hashMerkleRoot == uint256("0xf53b1baa971ea40be88cf51288aabd700dfec96c486bf7155a53a4919af4c8bd"));
        diff_adjust_threshold = 28336;
        alu_activation_height = 229376;

        vSeeds.push_back(CDNSSeedData("node.freico.in", "seed.freico.in"));
        vSeeds.push_back(CDNSSeedData("abacus.freico.in", "fledge.freico.in"));
        vSeeds.push_back(CDNSSeedData("seed.sicanet.net", "dnsseed.sicanet.net"));
        vSeeds.push_back(CDNSSeedData("mainnet.freicoin.pw", "seed.mainnet.freicoin.pw"));

        base58Prefixes[PUBKEY_ADDRESS] = list_of(0);
        base58Prefixes[SCRIPT_ADDRESS] = list_of(5);
        base58Prefixes[SECRET_KEY] =     list_of(128);
        base58Prefixes[EXT_PUBLIC_KEY] = list_of(0x04)(0x88)(0xB2)(0x1E);
        base58Prefixes[EXT_SECRET_KEY] = list_of(0x04)(0x88)(0xAD)(0xE4);

        // Convert the pnSeeds array into usable address objects.
        for (unsigned int i = 0; i < ARRAYLEN(pnSeed); i++)
        {
            // It'll only connect to one or two seed nodes because once it connects,
            // it'll get a pile of addresses with newer timestamps.
            // Seed nodes are given a random 'last seen time' of between one and two
            // weeks ago.
            const int64_t nOneWeek = 7*24*60*60;
            struct in_addr ip;
            memcpy(&ip, &pnSeed[i], sizeof(ip));
            CAddress addr(CService(ip, GetDefaultPort()));
            addr.nTime = GetTime() - GetRand(nOneWeek) - nOneWeek;
            vFixedSeeds.push_back(addr);
        }
    }

    virtual const CBlock& GenesisBlock() const { return genesis; }
    virtual Network NetworkID() const { return CChainParams::MAIN; }

    virtual const vector<CAddress>& FixedSeeds() const {
        return vFixedSeeds;
    }
protected:
    CBlock genesis;
    vector<CAddress> vFixedSeeds;
};
static CMainParams mainParams;


//
// Testnet (v3)
//
class CTestNetParams : public CMainParams {
public:
    CTestNetParams() {
        // The message start string is designed to be unlikely to occur in normal data.
        // The characters are rarely used upper ASCII, not valid as UTF-8, and produce
        // a large 4-byte int at any alignment.
        pchMessageStart[0] = 0x5e;
        pchMessageStart[1] = 0xd6;
        pchMessageStart[2] = 0x7c;
        pchMessageStart[3] = 0xf3;
        vAlertPubKey = ParseHex("04302390343f91cc401d56d68b123028bf52e5fca1939df127f63c6467cdf9c8e2c14b61104cf817d0b780da337893ecc4aaff1309e536162dabbdb45200ca2b0a");
        nDefaultPort = 18639;
        nRPCPort = 18638;
        strDataDir = "testnet";

        // Modify the testnet genesis block so the timestamp is valid for a later start.
        genesis.nTime = 1356123600;
        genesis.nNonce = 3098244593UL;
        hashGenesisBlock = genesis.GetHash();
        assert(hashGenesisBlock == uint256("0x00000000a52504ffe3420a43bd385ef24f81838921a903460b235d95f37cd65e"));
        diff_adjust_threshold = 2016;
        alu_activation_height = 2016;

        vFixedSeeds.clear();
        vSeeds.clear();
        vSeeds.push_back(CDNSSeedData("testnet.freicoin.pw", "seed.testnet.freicoin.pw"));

        base58Prefixes[PUBKEY_ADDRESS] = list_of(111);
        base58Prefixes[SCRIPT_ADDRESS] = list_of(196);
        base58Prefixes[SECRET_KEY]     = list_of(239);
        base58Prefixes[EXT_PUBLIC_KEY] = list_of(0x04)(0x35)(0x87)(0xCF);
        base58Prefixes[EXT_SECRET_KEY] = list_of(0x04)(0x35)(0x83)(0x94);
    }
    virtual Network NetworkID() const { return CChainParams::TESTNET; }
};
static CTestNetParams testNetParams;


//
// Regression test
//
class CRegTestParams : public CTestNetParams {
public:
    CRegTestParams() {
        pchMessageStart[0] = 0xfa;
        pchMessageStart[1] = 0xbf;
        pchMessageStart[2] = 0xb5;
        pchMessageStart[3] = 0xda;
        nSubsidyHalvingInterval = 150;
        bnProofOfWorkLimit = CBigNum(~uint256(0) >> 1);
        genesis.nTime = 1296688602;
        genesis.nBits = 0x207fffff;
        genesis.nNonce = 0;
        hashGenesisBlock = genesis.GetHash();
        diff_adjust_threshold = 1;
        alu_activation_height = 1;
        nDefaultPort = 18444;
        strDataDir = "regtest";
        assert(hashGenesisBlock == uint256("0x50c97b964bd3c34bd19a9ce60df9fed9172595c3c84d227cffa16ac2917cd50e"));

        vSeeds.clear();  // Regtest mode doesn't have any DNS seeds.
    }

    virtual bool RequireRPCPassword() const { return false; }
    virtual Network NetworkID() const { return CChainParams::REGTEST; }
};
static CRegTestParams regTestParams;

static CChainParams *pCurrentParams = &mainParams;

const CChainParams &Params() {
    return *pCurrentParams;
}

void SelectParams(CChainParams::Network network) {
    switch (network) {
        case CChainParams::MAIN:
            pCurrentParams = &mainParams;
            break;
        case CChainParams::TESTNET:
            pCurrentParams = &testNetParams;
            break;
        case CChainParams::REGTEST:
            pCurrentParams = &regTestParams;
            break;
        default:
            assert(false && "Unimplemented network");
            return;
    }
}

bool SelectParamsFromCommandLine() {
    bool fRegTest = GetBoolArg("-regtest", false);
    bool fTestNet = GetBoolArg("-testnet", false);

    if (fTestNet && fRegTest) {
        return false;
    }

    if (fRegTest) {
        SelectParams(CChainParams::REGTEST);
    } else if (fTestNet) {
        SelectParams(CChainParams::TESTNET);
    } else {
        SelectParams(CChainParams::MAIN);
    }
    return true;
}

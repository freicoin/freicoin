#!/usr/bin/env bash
# Copyright (c) 2014 The Bitcoin Core developers
# Copyright (c) 2018 The Freicoin developers.
#
# This program is free software: you can redistribute it and/or
# modify it under the conjunctive terms of BOTH version 3 of the GNU
# Affero General Public License as published by the Free Software
# Foundation AND the MIT/X11 software license.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Affero General Public License and the MIT/X11 software license for
# more details.
#
# You should have received a copy of both licenses along with this
# program.  If not, see <https://www.gnu.org/licenses/> and
# <http://www.opensource.org/licenses/mit-license.php>

# Test proper accounting with malleable transactions

if [ $# -lt 1 ]; then
        echo "Usage: $0 path_to_binaries"
        echo "e.g. $0 ../../src"
        exit 1
fi

set -f

FREICOIND=${1}/freicoind
CLI=${1}/freicoin-cli

DIR="${BASH_SOURCE%/*}"
SENDANDWAIT="${DIR}/send.sh"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi
. "$DIR/util.sh"

D=$(mktemp -d test.XXXXX)

# Two nodes; one will play the part of merchant, the
# other an evil transaction-mutating miner.

D1=${D}/node1
CreateDataDir $D1 port=11000 rpcport=11001
B1ARGS="-datadir=$D1"
$FREICOIND $B1ARGS &
B1PID=$!

D2=${D}/node2
CreateDataDir $D2 port=11010 rpcport=11011
B2ARGS="-datadir=$D2"
$FREICOIND $B2ARGS &
B2PID=$!

# Wait until both nodes are at the same block number
function WaitBlocks {
    while :
    do
        sleep 1
        declare -i BLOCKS1=$( GetBlocks $B1ARGS )
        declare -i BLOCKS2=$( GetBlocks $B2ARGS )
        if (( BLOCKS1 == BLOCKS2 ))
        then
            break
        fi
    done
}

# Wait until node has $N peers
function WaitPeers {
    while :
    do
        declare -i PEERS=$( $CLI $1 getconnectioncount )
        if (( PEERS == "$2" ))
        then
            break
        fi
        sleep 1
    done
}

echo "Generating test blockchain..."

# Start with B2 connected to B1:
$CLI $B2ARGS addnode 127.0.0.1:11000 onetry
WaitPeers "$B1ARGS" 1

# 1 block, 50 XBT each == 50 XBT
$CLI $B1ARGS setgenerate true 1

WaitBlocks
# 100 blocks, 0 mature == 0 XBT
$CLI $B2ARGS setgenerate true 100
WaitBlocks

CheckBalance "$B1ARGS" 750.56747480 "*"
CheckBalance "$B1ARGS" 750.49518275
CheckBalance "$B2ARGS" 0 "*"
CheckBalance "$B2ARGS" 0

# restart B2 with no connection
$CLI $B2ARGS stop > /dev/null 2>&1
wait $B2PID
$FREICOIND $B2ARGS &
B2PID=$!

B2ADDRESS=$( $CLI $B2ARGS getaccountaddress "from1" )

# Have B1 create two transactions; second will
# spend change from first, since B1 starts with only a single
# 50 freicoin output:
$CLI $B1ARGS move "" "foo" 10.0 > /dev/null
$CLI $B1ARGS move "" "bar" 10.0 > /dev/null
TXID1=$( $CLI $B1ARGS sendfrom foo $B2ADDRESS 1.0 0)
TXID2=$( $CLI $B1ARGS sendfrom bar $B2ADDRESS 2.0 0)

# Mutate TXID1 and add it to B2's memory pool:
RAWTX1=$( $CLI $B1ARGS getrawtransaction $TXID1 )
# RAWTX1 is hex-encoded, serialized transaction. So each
# byte is two characters; we'll prepend the first
# "push" in the scriptsig with OP_PUSHDATA1 (0x4c),
# and add one to the length of the signature.
# Fields are fixed; from the beginning:
# 4-byte version
# 1-byte varint number-of inputs (one in this case)
# 32-byte previous txid
# 4-byte previous output
# 1-byte varint length-of-scriptsig
# 1-byte PUSH this many bytes onto stack
#  ... etc
# So: to mutate, we want to get byte 41 (hex characters 82-83),
# increment it, and insert 0x4c after it.
L=${RAWTX1:82:2}
NEWLEN=$( printf "%x" $(( 16#$L + 1 )) )
MUTATEDTX1=${RAWTX1:0:82}${NEWLEN}4c${RAWTX1:84}
# ... give mutated tx1 to B2:
MUTATEDTXID=$( $CLI $B2ARGS sendrawtransaction $MUTATEDTX1 )

echo "TXID1: " $TXID1
echo "Mutated: " $MUTATEDTXID

# Re-connect nodes, and have B2 mine a block
# containing the mutant:
$CLI $B2ARGS addnode 127.0.0.1:11000 onetry
$CLI $B2ARGS setgenerate true 1
WaitBlocks

# B1 should have 49 FRC; the 2 FRC send is
# conflicted, and should not count in
# balances.
CheckBalance "$B1ARGS" 749.49518275 "*"
CheckBalance "$B1ARGS" 749.49446797
CheckBalance "$B1ARGS" 8.92770795 "foo"
CheckBalance "$B1ARGS" 10 "bar"

# B2 should have 51 FRC
CheckBalance "$B2ARGS" 751.56648789 "*"
CheckBalance "$B2ARGS" 751.49419498
CheckBalance "$B2ARGS" 1 "from1"

$CLI $B2ARGS stop > /dev/null 2>&1
wait $B2PID
$CLI $B1ARGS stop > /dev/null 2>&1
wait $B1PID

echo "Tests successful, cleaning up"
rm -rf $D
exit 0

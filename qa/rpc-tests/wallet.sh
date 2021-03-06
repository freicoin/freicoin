#!/usr/bin/env bash
# Copyright (c) 2013-2014 The Bitcoin Core developers
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

# Test block generation and basic wallet sending

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

D1=${D}/node1
CreateDataDir "$D1" port=11000 rpcport=11001
B1ARGS="-datadir=$D1"
$FREICOIND $B1ARGS &
B1PID=$!

D2=${D}/node2
CreateDataDir "$D2" port=11010 rpcport=11011 connect=127.0.0.1:11000
B2ARGS="-datadir=$D2"
$FREICOIND $B2ARGS &
B2PID=$!

D3=${D}/node3
CreateDataDir "$D3" port=11020 rpcport=11021 connect=127.0.0.1:11000
B3ARGS="-datadir=$D3"
$FREICOIND $FREICOINDARGS $B3ARGS &
B3PID=$!

# Wait until all three nodes are at the same block number
function WaitBlocks {
    while :
    do
        sleep 1
        declare -i BLOCKS1=$( GetBlocks $B1ARGS )
        declare -i BLOCKS2=$( GetBlocks $B2ARGS )
        declare -i BLOCKS3=$( GetBlocks $B3ARGS )
        if (( BLOCKS1 == BLOCKS2 && BLOCKS2 == BLOCKS3 ))
        then
            break
        fi
    done
}

echo "Generating test blockchain..."

# 1 block, 50 XBT each == 50 XBT
$CLI $B1ARGS setgenerate true 1
WaitBlocks
# 101 blocks, 1 mature == 50 XBT
$CLI $B2ARGS setgenerate true 101
WaitBlocks

CheckBalance "$B1ARGS" 750.56747480 "*"
CheckBalance "$B1ARGS" 750.49446702
CheckBalance "$B2ARGS" 750.56648789 "*"
CheckBalance "$B2ARGS" 750.49419594

# Send 21 XBT from 1 to 3. Second
# transaction will be child of first, and
# will require a fee
Send $B1ARGS $B3ARGS 11
Send $B1ARGS $B3ARGS 10

# Have B1 mine a new block, and mature it
# to recover transaction fees
$CLI $B1ARGS setgenerate true 1
WaitBlocks

# Have B2 mine 100 blocks so B1's block is mature:
$CLI $B2ARGS setgenerate true 100
WaitBlocks

# B1 should end up with 100 XBT in block rewards plus fees,
# minus the 21 XBT sent to B3:
CheckBalance "$B1ARGS" 1479.96127673 "*"
CheckBalance "$B1ARGS" 1479.81873201
CheckBalance "$B3ARGS" 21 "*"
CheckBalance "$B3ARGS" 20.99797734

# B1 should have two unspent outputs; create a couple
# of raw transactions to send them to B3, submit them through
# B2, and make sure both B1 and B3 pick them up properly:
RAW1=$(CreateTxn1 $B1ARGS 1 $(Address $B3ARGS "from1" ) )
RAW2=$(CreateTxn1 $B1ARGS 2 $(Address $B3ARGS "from1" ) )
RAWTXID1=$(SendRawTxn "$B2ARGS" $RAW1)
RAWTXID2=$(SendRawTxn "$B2ARGS" $RAW2)

# Have B2 mine a block to confirm transactions:
$CLI $B2ARGS setgenerate true 1
WaitBlocks

# Check balances after confirmation
CheckBalance "$B1ARGS" 0 "*"
CheckBalance "$B1ARGS" 0
CheckBalance "$B3ARGS" 1500.81873201 "*"
CheckBalance "$B3ARGS" 1500.81527804
CheckBalance "$B3ARGS" "1500.81873201-21" "from1"

$CLI $B3ARGS stop > /dev/null 2>&1
wait $B3PID
$CLI $B2ARGS stop > /dev/null 2>&1
wait $B2PID
$CLI $B1ARGS stop > /dev/null 2>&1
wait $B1PID

echo "Tests successful, cleaning up"
rm -rf $D
exit 0

#!/bin/bash

multichain-util create chain1

sed -e '/default-network/d' ~/.multichain/chain1/params.dat > ~/.multichain/chain1/params.dat.tmp

mv ~/.multichain/chain1/params.dat.tmp ~/.multichain/chain1/params.dat

#sed '/default-network/d' ~/.multichain/chain1/params.dat

echo 'default-network-port = 3000' >> ~/.multichain/chain1/params.dat

multichaind chain1 -daemon

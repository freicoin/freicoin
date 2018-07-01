#!/bin/bash
# Copyright (c) 2018 The Freicoin developers.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of version 3 of the GNU Affero General Public
# License as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public
# License along with this program.  If not, see
# <https://www.gnu.org/licenses/>.

if [ -e qa/rpc-tests/python-bitcoinrpc ]; then
  for fn in `git ls-tree -r --name-only HEAD | grep bitcoin`; do
    oldfn=`basename "$fn"`
    newfn=`basename "$fn" | sed -e 's:bitcoin:freicoin:g'`
    if [ "$oldfn" != "$newfn" ]; then
      git mv "$fn" `dirname "$fn"`/"$newfn"
    fi
    git mv qa/rpc-tests/python-bitcoinrpc/bitcoinrpc qa/rpc-tests/python-bitcoinrpc/freicoinrpc
    git mv qa/rpc-tests/python-bitcoinrpc qa/rpc-tests/python-freicoinrpc
  done
  git commit -m '[Branding] Rename files "bitcoin" -> "freicoin".'
fi

git grep -z -l bitcoin | xargs -0 sed -i 's:bitcoin:freicoin:g'
git grep -z -l Bitcoin | xargs -0 sed -i 's:Bitcoin:Freicoin:g'
git grep -z -l BitCoin | xargs -0 sed -i 's:BitCoin:FreiCoin:g'
git grep -z -l BITCOIN | xargs -0 sed -i 's:BITCOIN:FREICOIN:g'
git grep -z -l FRC | xargs -0 sed -i 's:FRC:FRC:g'
git grep -z -l frc | xargs -0 sed -i 's:frc:frc:g'
git grep -z -l kria | xargs -0 sed -i 's:kria:kria:g'
git grep -z -l "Freicoin Signed Message" | xargs -0 sed -i 's:Freicoin Signed Message:Bitcoin Signed Message:g'
git grep -z -l "replace(0, 10," | xargs -0 sed -i 's:replace(0, 10,:replace(0, 11,:g'
git grep -z -l 2011\ The\ Freicoin | xargs -0 sed -i 's:2011 The Freicoin:2011 The Bitcoin:g'
git grep -z -l 2012\ The\ Freicoin | xargs -0 sed -i 's:2012 The Freicoin:2012 The Bitcoin:g'
git grep -z -l 2013\ The\ Freicoin | xargs -0 sed -i 's:2013 The Freicoin:2013 The Bitcoin:g'
git grep -z -l 2014\ The\ Freicoin | xargs -0 sed -i 's:2014 The Freicoin:2014 The Bitcoin:g'
git grep -z -l 2015\ The\ Freicoin | xargs -0 sed -i 's:2015 The Freicoin:2015 The Bitcoin:g'
git grep -z -l 2011\ Freicoin | xargs -0 sed -i 's:2011 Freicoin:2011 Bitcoin:g'
git grep -z -l 2012\ Freicoin | xargs -0 sed -i 's:2012 Freicoin:2012 Bitcoin:g'
git grep -z -l 2013\ Freicoin | xargs -0 sed -i 's:2013 Freicoin:2013 Bitcoin:g'
git grep -z -l 2014\ Freicoin | xargs -0 sed -i 's:2014 Freicoin:2014 Bitcoin:g'
git grep -z -l 2015\ Freicoin | xargs -0 sed -i 's:2015 Freicoin:2015 Bitcoin:g'
git grep -z -l 2012\,\ Freicoin | xargs -0 sed -i 's:2012, Freicoin:2012, Bitcoin:g'
git grep -z -l YEAR\@\ The\ Freicoin\ Core | xargs -0 sed -i 's:YEAR@ The Freicoin Core:YEAR@ The Bitcoin Core:g'
git grep -z -l YYYY\ The\ Freicoin\ Core | xargs -0 sed -i 's:YYYY The Freicoin Core:YYYY The Bitcoin Core:g'
git grep -z -l Freicoin\ Core | xargs -0 sed -i 's:Freicoin Core:Freicoin:g'
git grep -z -l Freicoin\ core | xargs -0 sed -i 's:Freicoin core:Freicoin:g'
git grep -z -l freicoin\ core | xargs -0 sed -i 's:freicoin core:freicoin:g'
git grep -z -l freicointalk | xargs -0 sed -i 's:freicointalk:bitcointalk:g'
git grep -z -l FreicoinTalk | xargs -0 sed -i 's:FreicoinTalk:BitcoinTalk:g'
git grep -z -l freicoin.org | xargs -0 sed -i 's:freicoin.org:freico.in:g'
git grep -z -l www.freico.in | xargs -0 sed -i 's:www.freico.in:freico.in:g'
git grep -z -l freicoin/freico.in | xargs -0 sed -i 's:freicoin/freico.in:bitcoin/bitcoin.org:g'
git grep -z -l freicoin.sipa.be | xargs -0 sed -i 's:freicoin.sipa.be:bitcoin.sipa.be:g'
git grep -z -l org.freicoinfoundation | xargs -0 sed -i 's:org.freicoinfoundation:in.freico:g'
git grep -z -l org.freicoin | xargs -0 sed -i 's:org.freicoin:in.freico:g'
git grep -z -l freicoinfoundation | xargs -0 sed -i 's:freicoinfoundation:bitcoinfoundation:g'
git grep -z -l freicoincore.org | xargs -0 sed -i 's:freicoincore.org:bitcoincore.org:g'
git grep -z -l freicoin.it | xargs -0 sed -i 's:freicoin.it:bitcoin.it:g'
git grep -z -l locale/bitcoin.it | xargs -0 sed -i 's:locale/bitcoin.it:locale/freicoin_it:g'
git checkout -- contrib/devtools/rebrand.sh
git checkout -- COPYING
git checkout -- contrib/debian/changelog
git checkout -- contrib/debian/copyright
git checkout -- doc/assets-attribution.md
git checkout -- doc/release-notes
git commit -a -m '[Branding] Re-brand "bitcoin" -> "freicoin".'

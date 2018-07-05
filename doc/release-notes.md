Freicoin version 0.9.5.0-6 is now available from:

  http://freico.in/download/

This is a new major version release, bringing both new features and
bug fixes, and numerous security fixes.  It is recommended to upgrade
to this release as soon as possible.

It is especially important to upgrade if you are using freicoind from
any pre-0.9 version, and have enabled SSL for RPC and have configured
allowip to allow rpc connections from potentially hostile hosts.

Please report bugs using the issue tracker at github:

  https://github.com/freicoin/freicoin/issues

How to Upgrade
--------------

If you are running an older version, shut it down. Wait until it has
completely shut down (which might take a few minutes for older
versions), uninstall all earlier versions of Freicoin, then run the
installer (on Windows) or just copy over /Applications/Freicoin-Qt (on
Mac) or freicoind/freicoin-qt (on Linux).

If you are upgrading from version 0.7.2 or earlier, the first time you
run 0.9.0 your blockchain files will be re-indexed, which will take
anywhere from 30 minutes to several hours, depending on the speed of
your machine.

On Windows, do not forget to uninstall all earlier versions of the
Freicoin client first, especially if you are switching to the 64-bit
version.

OpenSSL Warning
===============

OpenSSL 1.0.0p / 1.0.1k was recently released and is being pushed out
by various operating system maintainers.  Review by Gregory Maxwell
determined that this update is incompatible with the Bitcoin-derived
systems and could lead to consensus forks.

Freicoin released binaries from http://freico.in/ are unaffected, as
are any built with the gitian deterministic build system.

However, if you are running a third-party or self-compiled Freicoin
upgrade to Freicoin 0.8.6-2, which include a workaround, **before**
updating OpenSSL.

The incompatibility is due to the OpenSSL update changing the behavior
of ECDSA validation to reject any signature which is not encoded in a
very rigid manner. This was a result of OpenSSL's change for
CVE-2014-8275 "Certificate fingerprints can be modified".

Notable changes
===============

Compatibility of Linux build
-----------------------------

For Linux we now build against Qt 4.6, and filter the symbols for
libstdc++ and glibc.  This brings back compatibility with

- Debian 6+ / Tails
- Ubuntu 10.04
- CentOS 6.5

Windows 64-bit installer
------------------------

New in 0.9.5.0-6 is the Windows 64-bit version of the client. There
have been frequent reports of Bitcoin users of the equivalent version
of the software running out of virtual memory on 32-bit systems during
the initial sync. Because of this it is recommended to install the
64-bit version if your system supports it.

Gitian OSX build
-----------------

The deterministic build system that was already used for Windows and
Linux builds is now used for OSX as well.  Although the resulting
executables have been tested quite a bit, there could be possible
regressions.  Be sure to report these on the Github bug tracker
mentioned above.

OSX 10.5 / 32-bit no longer supported
-------------------------------------

0.9.5.0-6 drops support for older Macs. The minimum requirements are
now:
* A 64-bit-capable CPU (see http://support.apple.com/kb/ht3696);
* Mac OS 10.6 or later (see https://support.apple.com/kb/ht1633).

Downgrading warnings
--------------------

The 'chainstate' for this release is not always compatible with
previous releases, so if you run 0.9 and then decide to switch back to
a 0.8.x release you might get a blockchain validation error when
starting the old release (due to 'pruned outputs' being omitted from
the index of unspent transaction outputs).

Running the old release with the -reindex option will rebuild the
chainstate data structures and correct the problem.

Also, the first time you run a 0.8.x release on a 0.9 wallet it will
rescan the blockchain for missing spent coins, which will take a long
time (tens of minutes on a typical machine).

OP_RETURN and data in the block chain
-------------------------------------

Unlike equivlent versions of Bitcoin, Freicoin's 0.9 release does not
relay transactions containing so-called "OP_RETURN" data outputs.
There was been some confusion and misunderstanding in the community,
regarding the OP_RETURN feature in 0.9 and data in the blockchain.
Storing arbitrary data in the blockchain is a bad idea; it is less
costly and far more efficient to store non-currency data elsewhere.

Autotools build system
----------------------

For 0.9.5.0-6 we switched to an autotools-based build system instead
of individual (q)makefiles.

Using the standard "./autogen.sh; ./configure; make" to build
Freicoin-Qt and freicoind makes it easier for experienced open source
developers to contribute to the project.

Be sure to check doc/build-*.md for your platform before building from
source.

freicoin-cli
------------

Another change in the 0.9 release is moving away from the freicoind
executable functioning both as a server and as a RPC client.  The RPC
client functionality ("tell the running freicoin daemon to do THIS")
was split into a separate executable, 'freicoin-cli'.  The RPC client
code will eventually be removed from freicoind, but will be kept for
backwards compatibility for a release or two.

`walletpassphrase` RPC
----------------------

The behavior of the `walletpassphrase` RPC when the wallet is already
unlocked has changed between 0.8 and 0.9.

The 0.8 behavior of `walletpassphrase` is to fail when the wallet is
already unlocked:

    > walletpassphrase 1000
    walletunlocktime = now + 1000
    > walletpassphrase 10
    Error: Wallet is already unlocked (old unlock time stays)

The new behavior of `walletpassphrase` is to set a new unlock time
overriding the old one:

    > walletpassphrase 1000
    walletunlocktime = now + 1000
    > walletpassphrase 10
    walletunlocktime = now + 10 (overriding the old unlock time)

Transaction malleability-related fixes
--------------------------------------

This release contains a few fixes for transaction ID (TXID)
malleability issues:

- -nospendzeroconfchange command-line option, to avoid spending
  zero-confirmation change
- IsStandard() transaction rules tightened to prevent relaying and
  mining of mutated transactions
- Additional information in listtransactions/gettransaction output to
  report wallet transactions that conflict with each other because
  they spend the same outputs.
- Bug fixes to the getbalance/listaccounts RPC commands, which would
  report incorrect balances for double-spent (or mutated)
  transactions.
- New option: -zapwallettxes to rebuild the wallet's transaction
  information

Transaction Fees
----------------

This release keeps the existing fee required to relay transactions
across the network and for miners to consider the transaction in their
blocks at 0.1 mFRC per kilobyte.

Note that getting a transaction relayed across the network does NOT
guarantee that the transaction will be accepted by a miner; by
default, miners fill their blocks with 25 kilobytes of high-priority
transactions, and then with 225 kilobytes of the
highest-fee-per-kilobyte transactions.

The minimum relay/mining fee-per-kilobyte may be changed with the
minrelaytxfee option.  Note that previous releases incorrectly used
the mintxfee setting to determine which low-priority transactions
should be considered for inclusion in blocks.

The wallet code uses the same default fee for low-priority
transactions of 0.1 mFRC per kilobyte.  During periods of heavy
transaction volume, even this fee may not be enough to get
transactions confirmed quickly; the mintxfee option may be used to
override the default.

0.9.5.0-6 changelog
===================

RPC:

- New notion of 'conflicted' transactions, reported as confirmations: -1
- 'listreceivedbyaddress' now provides tx ids
- Add raw transaction hex to 'gettransaction' output
- Updated help and tests for 'getreceivedby(account|address)'
- In 'getblock', accept 2nd 'verbose' parameter, similar to
  getrawtransaction, but defaulting to 1 for backward compatibility
- Add 'verifychain', to verify chain database at runtime
- Add 'dumpwallet' and 'importwallet' RPCs
- 'keypoolrefill' gains optional size parameter
- Add 'getbestblockhash', to return tip of best chain
- Add 'chainwork' (the total work done by all blocks since the genesis
  block) to 'getblock' output
- Make RPC password resistant to timing attacks
- Clarify help messages and add examples
- Add 'getrawchangeaddress' call for raw transaction change
  destinations
- Reject insanely high fees by default in 'sendrawtransaction'
- Add RPC call 'decodescript' to decode a hex-encoded transaction
  script
- Make 'validateaddress' provide redeemScript
- Add 'getnetworkhashps' to get the calculated network hashrate
- New RPC 'ping' command to request ping, new 'pingtime' and
  'pingwait' fields in 'getpeerinfo' output
- Adding new 'addrlocal' field to 'getpeerinfo' output
- Add verbose boolean to 'getrawmempool'
- Add rpc command 'getunconfirmedbalance' to obtain total unconfirmed balance
- Explicitly ensure that wallet is unlocked in `importprivkey`
- Add check for valid keys in `importprivkey`
- Add `getwalletinfo`, `getblockchaininfo` and `getnetworkinfo` calls
  (will replace hodge-podge `getinfo` at some point)
- Add a `relayfee` field to `getnetworkinfo`
- Fix RPC related shutdown hangs and leaks
- Always show syncnode in `getpeerinfo`
- `sendrawtransaction`: report the reject code and reason, and make it
  possible to re-send transactions that are already in the mempool
- `getmininginfo` show right genproclimit
- Avoid a segfault on getblock if it can't read a block from disk
- Add paranoid return value checks in base58
- `0a94661` Disable SSLv3 (in favor of TLS) for the RPC client and
  server.

Command-line options:

- New option: -nospendzeroconfchange to never spend unconfirmed change
  outputs
- New option: -zapwallettxes to rebuild the wallet's transaction
  information
- Rename option '-tor' to '-onion' to better reflect what it does
- Add '-disablewallet' mode to let freicoind run entirely without
  wallet (when built with wallet)
- Update default '-rpcsslciphers' to include TLSv1.2
- make '-logtimestamps' default on and rework help-message
- RPC client option: '-rpcwait', to wait for server start
- Remove '-logtodebugger'
- Allow `-noserver` with freicoind
- Fix `-printblocktree` output
- Show error message if ReadConfigFile fails
- `cd5164a` Make -proxy set all network types, avoiding a connect
  leak.

Block-chain handling and storage:

- Update leveldb to 1.15
- Check for correct genesis (prevent cases where a datadir from the
  wrong network is accidentally loaded)
- Allow txindex to be removed and add a reindex dialog
- Log aborted block database rebuilds
- Store orphan blocks in serialized form, to save memory
- Limit the number of orphan blocks in memory to 750
- Fix non-standard disconnected transactions causing mempool orphans
- Add a new checkpoint at block 230,832
- Upgrade leveldb to 1.17

Wallet:

- Bug fixes and new regression tests to correctly compute the balance
  of wallets containing double-spent (or mutated) transactions
- Store key creation time. Calculate whole-wallet birthday.
- Optimize rescan to skip blocks prior to birthday
- Let user select wallet file with -wallet=foo.dat
- Consider generated coins mature at 101 instead of 120 blocks
- Improve wallet load time
- Don't count txins for priority to encourage sweeping
- Don't create empty transactions when reading a corrupted wallet
- Fix rescan to start from beginning after importprivkey
- Only create signatures with quadratic R.y values
- Make GetAvailableCredit run GetHash() only once per transaction
  (performance improvement)
- Lower paytxfee warning threshold from 0.25 FRC to 0.01 FRC
- Fix importwallet nTimeFirstKey (trigger necessary rescans)
- Log BerkeleyDB version at startup
- CWallet init fix
- Check redeemScript size does not exceed 520 byte limit
- Ignore (and warn about) too-long redeemScripts while loading wallet

Mining:

- 'getblocktemplate' does not require a key to create a block template
- Mining code fee policy now matches relay fee policy

Protocol and network:

- Send tx relay flag with version
- New 'reject' P2P message (BIP 0061, see
  https://gist.github.com/gavinandresen/7079034 for draft)
- Dump addresses every 15 minutes instead of 10 seconds
- Remove CENT-output free transaction rule when relaying
- Lower maximum size for free transaction creation
- Send multiple inv messages if mempool.size > MAX_INV_SZ
- Split MIN_PROTO_VERSION into INIT_PROTO_VERSION and
  MIN_PEER_PROTO_VERSION
- Do not treat fFromMe transaction differently when broadcasting
- Process received messages one at a time without sleeping between
  messages
- Improve logging of failed connections
- Bump protocol version to 70002
- Add some additional logging to give extra network insight
- Per-peer block download tracking and stalled download detection
- Prevent socket leak in ThreadSocketHandler and correct some proxy
  related socket leaks
- Use pnode->nLastRecv as sync score (was the wrong way around)
- Don't poll showmyip.com, it doesn't exist anymore
- Add a way to limit deserialized string lengths and use it
- Increase IsStandard() scriptSig length
- Avoid querying DNS seeds, if we have open connections
- Remove a useless millisleep in socket handler
- Stricter memory limits on CNode
- Better orphan transaction handling
- Add `-maxorphantx=<n>` and `-maxorphanblocks=<n>` options for
  control over the maximum orphan transactions and blocks
- `bb424e4` Limit the number of new addressses to accumulate

Validation:

- Log reason for non-standard transaction rejection
- Prune provably-unspendable outputs, and adapt consistency check for
  it.
- Detect any sufficiently long fork and add a warning
- Call the -alertnotify script when we see a long or invalid fork
- Fix multi-block reorg transaction resurrection
- Reject non-canonically-encoded serialization sizes
- Reject dust amounts during validation
- Accept nLockTime transactions that finalize in the next block
- `b8e81b7` consensus: guard against openssl's new strict DER checks
- `60c51f1` fail immediately on an empty signature
- `037bfef` Improve robustness of DER recoding code

Build system:

- Switch to autotools-based build system
- Build without wallet by passing `--disable-wallet` to configure,
  this removes the BerkeleyDB dependency
- Upgrade gitian dependencies (libpng, libz, libupnpc, boost) to more
  recent versions
- Upgrade OpenSSL to 1.0.1k. This release fixes the following
  vulnerabilities which can affect the Freicoin software:
  - CVE-2014-0076
    The Montgomery ladder implementation in OpenSSL does not ensure
    that certain swap operations have a constant-time behavior, which
    makes it easier for local users to obtain ECDSA nonces via a
    FLUSH+RELOAD cache side-channel attack.
  - CVE-2014-0160 ("heartbleed")
    A missing bounds check in the handling of the TLS heartbeat
    extension can be used to reveal up to 64k of memory to a connected
    client or server.
  - CVE-2014-0224
    Not properly restricted processing of ChangeCipherSpec messages
    allowed a man-in-the-middle attackers to trigger use of a
    zero-length master key in certain OpenSSL-to-OpenSSL
    communications, and consequently hijack sessions or obtain
    sensitive information, via a crafted TLS handshake.
- Add statically built executables to Linux build
- Windows 64-bit build support
- Solaris compatibility fixes
- Check integrity of gitian input source tarballs
- Enable full GCC Stack-smashing protection for all OSes
- Add OSX build descriptors to gitian
- Fix explicit --disable-qt-dbus
- Don't require db_cxx.h when compiling with wallet disabled and GUI
  enabled
- Improve missing boost error reporting
- gitian-linux: --enable-glibc-back-compat for binary compatibility
  with old distributions
- gitian: don't export any symbols from executable
- gitian: build against Qt 4.6
- devtools: add script to check symbols from Linux gitian executables
- Remove build-time no-IPv6 setting
- `5b9f78d` build: Fix OSX build when using Homebrew and qt5
- `ffab1dd` Keep symlinks when copying into .app bundle
- `613247f` osx: fix signing to make Gatekeeper happy (again)
- `8438074` build: fix dynamic boost check when --with-boost= is used

GUI:

- Switch to Qt 5.2.0 for Windows build
- Add payment request (BIP 0070) support
- Improve options dialog
- Show transaction fee in new send confirmation dialog
- Add total balance in overview page
- Allow user to choose data directory on first start, when data
  directory is missing, or when the -choosedatadir option is passed
- Save and restore window positions
- Add vout index to transaction id in transactions details dialog
- Add network traffic graph in debug window
- Add open URI dialog
- Add Coin Control Features
- Improve receive coins workflow: make the 'Receive' tab into a form
  to request payments, and move historical address list functionality
  to File menu.
- Move initialization/shutdown to a thread. This prevents "Not
  responding" messages during startup. Also show a window during
  shutdown.
- Don't regenerate autostart link on every client startup
- Show and store message of normal freicoin:URI
- Fix richtext detection hang issue on very old Qt versions
- OS X: Make use of the 10.8+ user notification center to display
  Growl-like notifications
- OS X: Added NSHighResolutionCapable flag to Info.plist for better
  font rendering on Retina displays.
- OS X: Fix freicoin-qt startup crash when clicking dock icon
- Linux: Fix Gnome freicoin: URI handler
- Fix various coin control visual issues
- Show number of in/out connections in debug console
- Show weeks as well as years behind for long timespans behind
- Enable and disable the Show and Remove buttons for requested
  payments history based on whether any entry is selected.
- Show also value for options overridden on command line in options
  dialog
- Fill in label from address book also for URIs
- Fixes feel when resizing the last column on tables (issue #2862)
- Fix ESC in disablewallet mode
- Add expert section to wallet tab in optionsdialog
- Do proper boost::path conversion (fixes unicode in datadir)
- Only override -datadir if different from the default (fixes -datadir
  in config file)
- Show rescan progress at start-up
- Show importwallet progress
- Get required locks upfront in polling functions (avoids hanging on
  locks)
- Catch Windows shutdown events while client is running
- Optionally add third party links to transaction context menu
- Check for !pixmap() before trying to export QR code (avoids crashes
  when no QR code could be generated)
- Fix "Start freicoin on system login"
- Fix 'opens in testnet mode when presented with a BIP-72 link with no
  fallback'
- AvailableCoins: acquire cs_main mutex
- Fix unicode character display on MacOSX

Miscellaneous:

- Add Linux script (contrib/qos/tc.sh) to limit outgoing bandwidth
- Add '-regtest' mode, similar to testnet but private with instant
  block generation with 'setgenerate' RPC.
- Add 'linearize.py' script to contrib, for creating bootstrap.dat
- Add separate freicoin-cli client
- Replace non-threadsafe C functions (gmtime, strerror and setlocale)
- Add missing cs_main and wallet locks
- Avoid exception at startup when system locale not recognized
- Changed bitrpc.py's raw_input to getpass for passwords to conceal
  characters during command line input
- devtools: add a script to fetch and postprocess translations
- key.cpp: fail with a friendlier message on missing ssl EC support
- Remove bignum dependency for scripts
- Upgrade miniupnpc to 1.9.20140701
- Fix boost detection in build system on some platforms
- `25b49b5` Refactor -alertnotify code
- `2743529` doc: Add instructions for consistent Mac OS X build names
- `74f29c2` Check pindexBestForkBase for null
- `9cd1dd9` Fix priority calculation in CreateTransaction
- `6b4163b` Sanitize command strings before logging them.

Credits
-------

Thanks to everyone who contributed to this release:

- 21E14
- Addy Yeow
- Alex Morcos
- Altoidnerd
- Andrea D'Amore
- Andreas Schildbach
- Andrew Poelstra
- Andrey
- Ashley Holman
- b6393ce9-d324-4fe1-996b-acf82dbc3d53
- Bardi Harborow
- bitsofproof
- Brandon Dahler
- Bryan Bishop
- Calvin Tam
- Chris Beams
- Christian Decker
- Christian von Roques
- Christopher Latham
- Chuck
- coblee
- constantined
- Cory Fields
- Cozz Lovan
- daniel
- Daniel Larimer
- Daniel Newton
- David A. Harding
- David Hill
- ditto-b
- Dmitry Smirnov
- Drak
- duanemoody
- Eric Lombrozo
- Eric S. Bullington
- Fabian Raetz
- fanquake
- fcicq
- Florin
- frewil
- Gavin Andresen
- Gregory Maxwell
- gubatron
- Guillermo Céspedes Tabárez
- Haakon Nilsen
- HaltingState
- Han Lin Yap
- harry
- Hector Jusforgues
- Ian Kelling
- Isidoro Ghezzi
- Jeff Garzik
- Johnathan Corgan
- Jonas Schnelli
- Josh Lehan
- Josh Triplett
- jtimon
- Julian Haight
- Julian Langschaedel
- Kamil Domanski
- Kangmo
- Lake Denman
- langerhans
- Luke Dashjr
- Manuel Araoz
- Mark Friedenbach
- Matt Corallo
- Matthew Bogosian
- Meeh
- Michael Bauer
- Michael Ford
- Michagogo
- Midnight Magic
- Mikael Wikman
- Mike Hearn
- Nils Schneider
- Noel Tiernan
- olalonde
- Olivier Langlois
- patrick s
- Patrick Strateman
- paveljanik
- Pavel Vasin
- peryaudo
- Peter Todd
- phantomcircuit
- phelixbtc
- Philip Kaufmann
- philsong
- Pieter Wuille
- Rav3nPL
- R E Broadley
- regergregregerrge
- richierichrawr
- Robert Backhaus
- Roman Mindalev
- Rose Toomey
- Ruben Dario Ponticelli
- Rune K. Svendsen
- rxl
- Ryan Niebur
- Saivann
- Scott Ellis
- Scott Willeke
- Sergey Kazenyuk
- Sergio Demian Lerner
- Shawn Wilkinson
- shshshsh
- Simon de la Rouviere
- Sined
- sje
- Stuart Cardall
- Subo1978
- super3
- Tamas Blummer
- Telepatheic
- theuni
- Thomas Holenstein
- Thomas Zander
- Timon Rapp
- Timothy Stranex
- Tom Geller
- Torstein Husebø
- Trevin Hofmann
- Vaclav Vobornik
- vhf / victor felder
- Vinnie Falco
- Warren Togami
- Wil Bown
- Wladimir J. van der Laan
- Yoichi Hirai
- Zak Wilcox

As well as everyone that helped translating on
[Transifex](https://www.transifex.com/projects/p/bitcoin/).

Credits go to the OpenSSL team for fixing the vulnerabilities quickly.

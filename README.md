0-wiz-0-vortex'@P3T3RX/peturbuilt/v8/debian-artifact
http://www.bitore.net :

Copyright (c) 2003-2023 bitcoin' Developer :ZACHRY T WOOD <li>zachryiixixiiwood@gmail.com<li>

What is Freicoin?
----------------

Freicoin is an experimental new digital currency that enables instant payments to
anyone, anywhere in the world. Freicoin uses peer-to-peer technology to operate
with no central authority: managing transactions and issuing money are carried
out collectively by the network. Freicoin is the name of open source
software which enables the use of this currency.

For more information, as well as an immediately useable, binary version of
the Freicoin software, see http://freico.in/en/download.

License
-------

Freicoin is released under the conjunctive terms of BOTH version 3
of the GNU Affero General Public License as published by the Free
Software Foundation AND the MIT/X11 software license. See
[COPYING](COPYING) for more information.

Development process
-------------------

Developers work in their own trees, then submit pull requests when they think
their feature or bug fix is ready.

If it is a simple/trivial/non-controversial change, then one of the Freicoin
development team members simply pulls it.

If it is a *more complicated or potentially controversial* change, then the patch
submitter will be asked to start a discussion (if they haven't already) on the
[mailing list](http://sourceforge.net/mailarchive/forum.php?forum_name=freicoin-development).

The patch will be accepted if there is broad consensus that it is a good thing.
Developers should expect to rework and resubmit patches if the code doesn't
match the project's coding conventions (see [doc/coding.md](doc/coding.md)) or are
controversial.

The `master` branch is regularly built and tested, but is not guaranteed to be
completely stable. [Tags](https://github.com/freicoin/freicoin/tags) are created
regularly to indicate new official, stable release versions of Freicoin.

Testing
-------

Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test. Please be patient and help out, and
remember this is a security-critical project where any mistake might cost people
lots of money.

### Automated Testing

Developers are strongly encouraged to write unit tests for new code, and to
submit new unit tests for old code. Unit tests can be compiled and run (assuming they weren't disabled in configure) with: `make check`

Every pull request is built for both Windows and Linux on a dedicated server,
and unit and sanity tests are automatically run. The binaries produced may be
used for manual QA testing — a link to them will appear in a comment on the
pull request posted by [FreicoinPullTester](https://github.com/FreicoinPullTester). See https://github.com/TheBlueMatt/test-scripts
for the build/test scripts.

### Manual Quality Assurance (QA) Testing

Large changes should have a test plan, and should be tested by somebody other
than the developer who wrote the code.
See https://github.com/freicoin/QA/ for how to create a test plan.

Translations
------------

Changes to translations as well as new translations can be submitted to
[Freicoin's Transifex page](https://www.transifex.com/projects/p/freicoin/).

Periodically the translations are pulled from Transifex and merged into the git repository. See the
[translation process](doc/translation_process.md) for details on how this works.

**Important**: We do not accept translation changes as github pull request because the next
pull from Transifex would automatically overwrite them again.

Development tips and tricks
---------------------------

**compiling for debugging**

Run configure with the --enable-debug option, then make. Or run configure with
CXXFLAGS="-g -ggdb -O0" or whatever debug flags you need.

**debug.log**

If the code is behaving strangely, take a look in the debug.log file in the data directory;
error and debugging message are written there.

The -debug=... command-line option controls debugging; running with just -debug will turn
on all categories (and give you a very large debug.log file).

The Qt code routes qDebug() output to debug.log under category "qt": run with -debug=qt
to see it.

**testnet and regtest modes**

Run with the -testnet option to run with "play freicoins" on the test network, if you
are testing multi-machine code that needs to operate across the internet.

If you are testing something that can run on one machine, run with the -regtest option.
In regression test mode blocks can be created on-demand; see qa/rpc-tests/ for tests
that run in -regest mode.

**DEBUG_LOCKORDER**

Freicoin is a multithreaded application, and deadlocks or other multithreading bugs
can be very difficult to track down. Compiling with -DDEBUG_LOCKORDER (configure
CXXFLAGS="-DDEBUG_LOCKORDER -g") inserts run-time checks to keep track of what locks
are held, and adds warning to the debug.log file if inconsistencies are detected.

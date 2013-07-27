Freicoin 0.9.0rc1 BETA
======================

Copyright (c) 2009-2014 Bitcoin Developers


Setup
---------------------
[Freicoin Core](http://freico.in/) is the original Freicoin client and it builds the backbone of the network. However, it downloads and stores the entire history of Freicoin transactions (which is currently several GBs); depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more. Thankfully you only have to do this once.

Running
---------------------
The following are some helpful notes on how to run Freicoin on your native platform. 

### Unix

You need the Qt4 run-time libraries to run Freicoin-Qt. On Debian or Ubuntu:

	sudo apt-get install libqtgui4

Unpack the files into a directory and run:

- bin/32/freicoin-qt (GUI, 32-bit) or bin/32/freicoind (headless, 32-bit)
- bin/64/freicoin-qt (GUI, 64-bit) or bin/64/freicoind (headless, 64-bit)

### Windows

Unpack the files into a directory, and then run freicoin-qt.exe.

### OSX

Drag Freicoin-Qt to your applications folder, and then run Freicoin-Qt.

### Need Help?

* See the documentation at the [Bitcoin Wiki](https://en.bitcoin.it/wiki/Main_Page)
for help and more information.
* Ask for help on [#freicoin](http://webchat.freenode.net?channels=freicoin) on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net?channels=freicoin).
* Ask for help on the [Freicoin Forums](http://freicoin.freeforums.org/) forums, in the [Technical Support board](http://freicoin.freeforums.org/technical-support-f16.html).

Building
---------------------
The following are developer notes on how to build Freicoin on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [OSX Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-msw.md)

Development
---------------------
The Freicoin repo's [root README](https://github.com/freicoin/freicoin/blob/master/README.md) contains relevant information on the development process and automated testing.

- [Coding Guidelines](coding.md)
- [Multiwallet Qt Development](multiwallet-qt.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://dev.visucore.com/bitcoin/doxygen/)
- [Translation Process](translation_process.md)
- [Unit Tests](unit-tests.md)

### Resources
* Discuss on the [Freicoin Forums](http://freicoin.freeforums.org/) forums, in the [Software Development board](http://freicoin.freeforums.org/software-development-f7.html).
* Discuss on [#freicoin](http://webchat.freenode.net/?channels=freicoin) on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=freicoin).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [Files](files.md)
- [Tor Support](tor.md)

License
---------------------
Distributed under the [MIT/X11 software license](http://www.opensource.org/licenses/mit-license.php).
This product includes software developed by the OpenSSL Project for use in the [OpenSSL Toolkit](http://www.openssl.org/). This product includes
cryptographic software written by Eric Young ([eay@cryptsoft.com](mailto:eay@cryptsoft.com)), and UPnP software written by Thomas Bernard.

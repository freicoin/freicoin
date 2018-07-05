
Debian
====================
This directory contains files used to package freicoind/freicoin-qt
for Debian-based Linux systems. If you compile freicoind/freicoin-qt yourself, there are some useful files here.

## freicoin: URI support ##


freicoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install freicoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your freicoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/freicoin128.png` to `/usr/share/pixmaps`

freicoin-qt.protocol (KDE)


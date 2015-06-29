
Debian
====================
This directory contains files used to package mobicoind/mobicoin-qt
for Debian-based Linux systems. If you compile mobicoind/mobicoin-qt yourself, there are some useful files here.

## mobicoin: URI support ##


mobicoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install mobicoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your mobicoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/mobicoin128.png` to `/usr/share/pixmaps`

mobicoin-qt.protocol (KDE)


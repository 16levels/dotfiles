#!/bin/sh

sed 's/Icon=org.gnome.Ptyxis/Icon=ptyxis/g' \
	/usr/share/applications/org.gnome.Ptyxis.desktop > \
	"$HOME/.local/share/applications/org.gnome.Ptyxis.desktop"

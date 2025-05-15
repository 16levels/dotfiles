#!/bin/sh

icon_url='https://gitlab.gnome.org/chergert/ptyxis/-/raw/main/data/icons/ptyxis.svg'

curl -O --create-dirs --output-dir "$HOME"/.local/share/icons/hicolor/scalable/apps/ $icon_url
sed 's/Icon=org.gnome.Ptyxis/Icon=ptyxis/g' /usr/share/applications/org.gnome.Ptyxis.desktop > \
	"$HOME"/.local/share/applications/org.gnome.Ptyxis.desktop




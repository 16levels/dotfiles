#!/bin/sh

  echo "style-scheme 'catppuccin' \
	custom-font 'Iosevka 12' \
	show-line-numbers true \
	keybindings 'vim' \
	show-map true" | \
	xargs -n2 flatpak run --command=gsettings org.gnome.TextEditor set org.gnome.TextEditor

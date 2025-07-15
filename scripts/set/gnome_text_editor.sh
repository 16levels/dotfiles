#!/bin/sh

#theme_url='https://raw.githubusercontent.com/Fausto-Korpsvart/Catppuccin-GTK-Theme/refs/heads/main/extra/text-editor/catppuccin-frappe.xml'

#curl --create-dirs --output-dir "$HOME/.var/app/org.gnome.TextEditor/data/gtksourceview-5/styles" -O $theme_url

flatpak run --command=gsettings org.gnome.TextEditor set org.gnome.TextEditor style-scheme 'catppuccin'
flatpak run --command=gsettings org.gnome.TextEditor set org.gnome.TextEditor custom-font 'Iosevka 14'
flatpak run --command=gsettings org.gnome.TextEditor set org.gnome.TextEditor show-line-numbers true
flatpak run --command=gsettings org.gnome.TextEditor set org.gnome.TextEditor keybindings 'vim'
flatpak run --command=gsettings org.gnome.TextEditor set org.gnome.TextEditor show-map true

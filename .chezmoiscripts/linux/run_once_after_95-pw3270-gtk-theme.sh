#!/bin/sh
# Use Catppuccin Frappe GTK theme for 'br.app.pw3270.terminal' flatpak.

flatpak override --user --env=GTK_THEME="adw-gtk3" br.app.pw3270.terminal

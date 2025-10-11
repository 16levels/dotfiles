#!/bin/sh
# Grant flatpaks access to host GTK themes

flatpak --user override --filesystem=xdg-data/themes
flatpak --user override --filesystem=xdg-config/gtk-3.0
flatpak --user override --filesystem=xdg-config/gtk-4.0

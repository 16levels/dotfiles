#!/bin/sh
# Grant flatpaks access to host fonts.

flatpak --user override --filesystem=xdg-data/fonts

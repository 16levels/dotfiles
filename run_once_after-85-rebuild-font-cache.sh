#!/bin/sh

echo "Rebuilding font cache..."
fc-cache -f -v "$HOME/.local/share/fonts"

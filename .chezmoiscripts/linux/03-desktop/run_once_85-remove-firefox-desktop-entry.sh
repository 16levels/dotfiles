#!/bin/sh

sed '/^\[Desktop Entry\]$/a NoDisplay=true' \
	/usr/share/applications/org.mozilla.firefox.desktop > \
    "$HOME/.local/share/applications/org.mozilla.firefox.desktop"

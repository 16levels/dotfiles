#!/bin/sh

editors="\
	com.helix_editor.Helix \
	com.visualstudio.code \
	com.vscodium.codium \
	io.neovim.nvim \
	org.gnu.emacs \
	"

installed_apps=$(flatpak list)

for flatpak in $editors; do
	if echo "$installed_apps" | grep -q "$flatpak"; then
		echo "Enabling available SDKs for flatpak '$flatpak'..."
		flatpak override --user --env="FLATPAK_ENABLE_SDK_EXT=*" "$flatpak"
	fi
done

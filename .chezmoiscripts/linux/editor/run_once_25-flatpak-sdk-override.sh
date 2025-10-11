#!/bin/sh
# Enable all available Flatpak SDKs for installed editors.

editors="\
	com.helix_editor.Helix \
	com.visualstudio.code \
	com.vscodium.codium \
	dev.zed.Zed \
	io.neovim.nvim \
	org.gnu.emacs \
	"

installed_apps=$(flatpak list)

for flatpak in $editors; do
	if echo "$installed_apps" | grep -q "$flatpak"; then
		echo "Enabling available SDKs for flatpak '$flatpak'..."
		flatpak override --user --env="FLATPAK_ENABLE_SDK_EXT=*" "$flatpak"
		echo "Appending \$PATH for flatpak '$flatpak'..."
		flatpak override --user --env=PATH="/app/bin:/usr/bin:$HOME/.local/bin:$HOME/go/bin:$HOME/.opam/default/bin" "$flatpak"
	fi
done

#!/bin/sh

echo "Enabling available SDKs for flatpak 'io.neovim.nvim'..."
flatpak override --user --env="FLATPAK_ENABLE_SDK_EXT=*" io.neovim.nvim
echo "Enabling available SDKs for flatpak 'org.gnu.Emacs'..."
flatpak override --user --env="FLATPAK_ENABLE_SDK_EXT=*" org.gnu.emacs

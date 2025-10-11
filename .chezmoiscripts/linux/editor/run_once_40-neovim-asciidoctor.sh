#!/bin/sh
# Install 'asciidoctor' for 'io.neovim.nvim' flatpak.

flatpak run io.neovim.nvim --headless \
-c "!gem i --silent asciidoctor" \
-c "q"

#!/bin/sh

flatpak run io.neovim.nvim --headless \
-c "!gem i --silent asciidoctor" \
-c "q"

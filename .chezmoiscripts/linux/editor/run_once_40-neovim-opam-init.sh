#!/bin/sh

flatpak run io.neovim.nvim --headless \
-c "!opam init --disable-sandboxing --no-setup --root \$XDG_DATA_HOME/ocaml" \
-c "!echo \$XDG_DATA_HOME > /tmp/XDG_DATA_HOME" \
-c "q"

flatpak --user override --env=OPAMROOT="$(cat /tmp/XDG_DATA_HOME)/ocaml" io.neovim.nvim
rm /tmp/XDG_DATA_HOME

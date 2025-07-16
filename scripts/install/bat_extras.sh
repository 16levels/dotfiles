#!/bin/sh

git clone https://github.com/eth-p/bat-extras.git "$HOME"/tmp/bat-extras
"$HOME"/tmp/bat-extras/build.sh --install --prefix="$HOME"/.local
rm -rf "$HOME"/tmp/bat-extras
find "$HOME"/tmp -type d -empty -delete

#!/bin/sh

git clone https://github.com/eth-p/bat-extras.git "$HOME"/tmp/bat-extras
cd "$HOME"/tmp/bat-extras
./build.sh --install --prefix="$HOME"/.local
cd ../
rm -rf "$HOME"/tmp/bat-extras


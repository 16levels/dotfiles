#!/bin/sh

curl -LsSf https://astral.sh/uv/install.sh | sh

# ensure .l/b is in path for package install script
if [ -d "$HOME/.local/bin" ]; then
    export PATH="HOME/.local/bin:$PATH"
fi

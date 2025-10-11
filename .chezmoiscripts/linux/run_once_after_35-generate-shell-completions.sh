#!/bin/sh
# Generate shell completions for external binaries.

echo "Generating shell completions for external binaries..."
chezmoi completion fish > ~/.config/fish/completions/chezmoi.fish
devpod completion fish > ~/.config/fish/completions/devpod.fish
glow completion fish > ~/.config/fish/completions/glow.fish
rg --generate=complete-fish > ~/.config/fish/completions/rg.fish
starship completions fish > ~/.config/fish/completions/starship.fish

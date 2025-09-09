#!/bin/sh

releaseCode=$(lsb_release -sc)

# ensure that curl is available
sudo apt-get -y install curl

# tailscale
echo "Adding tailscale package signing key and repository..."
curl -fsSL "https://pkgs.tailscale.com/stable/debian/$releaseCode.noarmor.gpg" | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
curl -fsSL "https://pkgs.tailscale.com/stable/debian/$releaseCode.tailscale-keyring.list" | sudo tee /etc/apt/sources.list.d/tailscale.list

sudo apt-get update

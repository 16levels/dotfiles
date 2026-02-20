#!/bin/sh

systemctl --user daemon-reload
systemctl --user start guix-daemon

GUIX_SOCKET="guix://127.0.0.1:44146"

if [ ! -L "$HOME/.config/guix/current" ]; then
	mkdir -p "$HOME/.config/guix" "$HOME/.cache/guix"
	podman run --rm \
	    --security-opt label=disable --net=host \
	    -v guix-store:/gnu:ro,z \
	    -v guix-var:/var/guix:z \
	    -v "$HOME/.config/guix":"$HOME/.config/guix":z \
	    -v "$HOME/.cache/guix":"$HOME/.cache/guix":z \
	    --userns keep-id -e USER="$USER" -e HOME="$HOME" \
	    -e GUIX_DAEMON_SOCKET="$GUIX_SOCKET" \
	    registry.fedoraproject.org/fedora-minimal:latest /var/guix/profiles/per-user/root/current-guix/bin/guix pull

	# Create the profile link on the host so the container doesn't need write access to $HOME root
	ln -sfn "/var/guix/profiles/per-user/$USER/current-guix" "$HOME/.config/guix/current"
fi

#!/bin/sh
# Enable auto updates for systemd quadlets.

systemctl --user enable --now podman-auto-update.timer

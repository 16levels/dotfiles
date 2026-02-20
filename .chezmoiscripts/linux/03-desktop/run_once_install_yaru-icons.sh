#!/bin/bash

user_icons="$HOME/.local/share/icons"

if [ ! -d "$user_icons/Yaru" ]; then
  mkdir -p "$user_icons"
  cd /tmp || exit
  podman run --rm -v "$user_icons:/mnt/out:Z" registry.fedoraproject.org/fedora-minimal:latest /bin/bash -c "
      dnf -y install cpio
      dnf download yaru-icon-theme
      rpm2cpio yaru-icon-theme*.rpm | cpio -idmv
      mv usr/share/icons/Yaru* /mnt/out/
"
else
  echo "Directory '$user_icons/Yaru' already exists."
fi

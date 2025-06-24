#!/bin/sh

quadlet_dir="$HOME/.config/containers/systemd"

useradd -c 'Homebridge' homebridge
su -c "mkdir -p $quadlet_dir" homebridge

su -c 'echo \
"[Unit]
Description='Homebridge'
After=local-fs.target

[Container]
Image=docker.io/homebridge/homebridge:latest
AutoUpdate=registry
LogDriver=json-file
Volume=homebridge.volume:/homebridge:Z
Network=host
HealthCmd='curl --fail localhost:8581 || exit 1'
HealthInterval=1m
HealthRetries=5
HealthStartPeriod=5m
HealthTimeout=2s

[Service]
Restart=always

[Install]
WantedBy=multi-user.target default.target" > "$quadlet_dir"/homebridge.container' homebridge

su -c 'echo \
"[Volume]
Device=bind" > $quadlet_dir/homebridge.volume' homebridge


loginctl enable-linger homebridge
systemctl --machine=homebridge@.host --user daemon-reload
systemctl --machine=homebridge@.host --user start homebridge.service
systemctl --machine=homebridge@.host --user enable --now podman-auto-update.timer

usermod -s /usr/sbin/nologin homebridge
passwd -l homebridge

firewall-cmd --permanent --add-port=8581/tcp
firewall-cmd --reload


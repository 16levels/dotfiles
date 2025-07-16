#!/bin/sh

export MEDIA_DIR='/mnt/jellyfin'


useradd -c 'Jellyfin media server' jellyfin
su -c "mkdir -p \
	/home/jellyfin/config \
	/home/jellyfin/cache \
	/home/jellyfin/.config/containers/systemd" jellyfin

su -c echo \
"[Unit]
Description=Jellyfin

[Container]
Image=docker.io/jellyfin/jellyfin:latest
AutoUpdate=registry
PublishPort=8096:8096/tcp
Network=host
UserNS=keep-id
AddDevice=/dev/dri:/dev/dri
Volume=/home/jellyfin/config:/config:Z
Volume=/home/jellyfin/cache:/cache:Z
Volume=$MEDIA_DIR:/media:z

[Service]
SuccessExitStatus=0 143
 
[Install]
WantedBy=default.target" > /home/jellyfin/.config/containers/systemd/jellyfin.container jellyfin


loginctl enable-linger jellyfin
systemctl --machine=jellyfin@.host --user daemon-reload
systemctl --machine=jellyfin@.host --user start jellyfin.service
systemctl --machine=jellyfin@.host --user enable --now podman-auto-update.timer

usermod -s /usr/sbin/nologin jellyfin
passwd -l jellyfin

firewall-cmd --permanent --add-port=8096/tcp
firewall-cmd --permanent --add-port=1900/udp
firewall-cmd --permanent --add-port=7359/udp
firewall-cmd --reload


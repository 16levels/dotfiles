#!/bin/sh

# Adds an entry for a group found using NSS but not present in /etc/group

if group_line=$(getent group "$1") >/dev/null 2>&1 && ! grep "$1" /etc/group >/dev/null 2>&1; then
	echo "$group_line" >> /etc/group
else
	exit 1
fi

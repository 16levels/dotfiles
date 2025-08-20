#!/bin/sh

if command -v curl > /dev/null 2>&1; then
	https_cmd="curl -s"
elif command -v wget > /dev/null 2>&1; then
	https_cmd="wget -qO -"
else exit 1; fi
        
$https_cmd "https://api.github.com/repos/$1/releases/latest" | grep tag_name | cut -d : -f2 | tr -d "v\", "

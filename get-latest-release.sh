#!/bin/sh

curl -s "https://api.github.com/repos/$1/releases/latest" | grep tag_name | cut -d : -f2 | tr -d "v\", "

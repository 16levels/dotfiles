#!/bin/sh

echo "Rebuilding 'bat' cache..."
if command -v bat 2>&1 /dev/null; then
	bat cache --build
elif command -v batcat 2>&1 /dev/null; then
	batcat cache --build
else echo "'bat' could not be found..."; fi

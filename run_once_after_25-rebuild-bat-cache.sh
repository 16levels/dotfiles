#!/bin/sh

echo "Rebuilding 'bat' cache..."
if command -v bat > /dev/null 2>&1; then
	bat cache --build
elif command -v batcat > /dev/null 2>&1; then
	batcat cache --build
else echo "'bat' could not be found..."; fi

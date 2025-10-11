#!/bin/sh
# Disable sandboxing for Zed flatpak.

flatpak override --user --env="ZED_FLATPAK_NO_ESCAPE=1" dev.zed.Zed

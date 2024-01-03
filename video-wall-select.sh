#!/usr/bin/env bash
# Script to select a video wallpaper downloaded from the Wallpaper Engine Steam Workshop
# and set it as the current wallpaper with mpvpaper.
# Requires: mpvpaper, file, grep, cut
#
# Usage: select-video-wallpaper.sh
# Author: wizzdom

# dmenu to use
DMENU="wofi --dmenu"

# default video wallpaper
DEFAULT="$HOME/Videos/wallpapers/default.mp4"

LIST_FILE="/tmp/video-wallpapers"

SELECTED=$(cat $LIST_FILE | $DMENU -i -p "Select a video wallpaper")

# Set the selected video as default wallpaper
if [ -f "$DEFAULT" ]; then
    rm -f "$DEFAULT"
fi

ln -sf "$SELECTED" "$DEFAULT"

# Set the selected video as the current wallpaper
$HOME/scripts/video-wall.sh "$SELECTED"

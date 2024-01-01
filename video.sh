#!/usr/bin/env bash
# Script to set a video as wallpaper using mpvpaper
# Dependencies: mpv, mpvpaper and a wayland compositor
# Author: wizzdom

# kill swaybg if it is running
if ps -C swaybg
then
    pkill -9 swaybg
fi

# kill mpvpaper if it is running
if ps -C mpvpaper
then
    pkill -9 mpvpaper
fi

# set monitor
MONITOR="HDMI-A-1"

# checks if the first argument is empty, if it is, then it sets the video to the default
if [ -z $1 ]
then
    VIDEO=$HOME/Videos/nobara.mp4
else
    VIDEO="$1"
    fi

# set video wallpaper
mpvpaper -o "no-audio loop speed=0.8" $MONITOR "$VIDEO"

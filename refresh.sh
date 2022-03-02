#!/bin/bash
killall pulseaudio
killall mpd
# $HOME/.config/screenlayout/laptop-upstairs-docked.sh
pulseaudio &
mpd &

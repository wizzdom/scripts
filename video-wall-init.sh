#!/usr/bin/env bash
# Script to initialize the list of video wallpapers downloaded from the Wallpaper Engine Steam Workshop or other sources


# Path to the Wallpaper Engine Steam Workshop directory
WALLENGINE_DIR="/mnt/storage/SteamLibrary/steamapps/workshop/content/431960"
# Path to the directory where you store your own video wallpapers
VIDEOWALL_DIR="$HOME/Videos/wallpapers"
# Path to the file where the list of video wallpapers will be stored
LIST_FILE="$HOME/.cache/video-wallpapers"

# Get the list of video files from the Wallpaper Engine Steam Workshop
echo "Getting the list of video files from the Wallpaper Engine Steam Workshop..."
echo "This may take a while..."
find $WALLENGINE_DIR -type f -exec file -N -i -- {} + | grep video | cut --delimiter=":" --fields=1 | sort > $LIST_FILE
echo "Done."
echo "Getting the list of video files from the $VIDEOWALL_DIR directory..."
find $VIDEOWALL_DIR -type f -exec file -N -i -- {} + | grep video | cut --delimiter=":" --fields=1 | sort >> $LIST_FILE
echo "Done."

echo "The list of video wallpapers is stored in $LIST_FILE"

#!/bin/sh
LABEL="Virtual Cam"
sudo modprobe v4l2loopback video_nr=5 card_label="$LABEL" exclusive_caps=1
ffmpeg -i /dev/video0 -f v4l2 -vcodec rawvideo -pix_fmt yuv420p /dev/video5

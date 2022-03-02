#!/bin/sh
LABEL="Virtual Cam"
NOHUP=1
sudo modprobe v4l2loopback video_nr=5 card_label="$LABEL" exclusive_caps=1
if [ $NOHUP = 1 ];
then
nohup ffmpeg -i /dev/video0 -f v4l2 -vcodec rawvideo -pix_fmt yuv420p /dev/video5 &
elif [ $NOHUP = 0 ]
then
    ffmpeg -i /dev/video0 -f v4l2 -vcodec rawvideo -pix_fmt yuv420p /dev/video5
else
    echo "Error: incorrect NOHUP value"
fi

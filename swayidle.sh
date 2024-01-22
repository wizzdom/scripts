#!/bin/sh

swayidle -w timeout 300 '$HOME/scripts/swaylock' \
            timeout 600 'systemctl suspend' \
            before-sleep '$HOME/scripts/swaylock' &

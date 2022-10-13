#!/bin/sh

TABLET_NAME="Wacom"

xinput list | grep $TABLET_NAME | sed &%^^%&something | xinput disable -

systemctl --user start opentabletdriver

#!/bin/bash


IMAGE=/tmp/i3lock.png
SCREENSHOT="scrot $IMAGE"
LOCK_ICON="$HOME/Pictures/icons/lock.png"
BLURTYPE="0x5"

$SCREENSHOT
convert $IMAGE -blur $BLURTYPE $IMAGE
convert $IMAGE $LOCK_ICON -gravity center -composite -matte $IMAGE
i3lock -u -i $IMAGE
rm $IMAGE

exit 0

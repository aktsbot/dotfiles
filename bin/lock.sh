#!/bin/bash


IMAGE=/tmp/i3lock.png
SCREENSHOT="scrot $IMAGE"

BLURTYPE="0x5"

$SCREENSHOT
convert $IMAGE -blur $BLURTYPE $IMAGE
i3lock -i $IMAGE
rm $IMAGE

exit 0

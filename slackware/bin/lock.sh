#!/bin/bash

#
# credits: https://plankenau.com/blog/post/gaussianlock
#

if [ -f /tmp/screenshot.png ]
then
    rm /tmp/screenshot.png
fi

scrot /tmp/screenshot.png
convert /tmp/screenshot.png -blur 0x5 /tmp/screenshotblur.png
i3lock -i /tmp/screenshotblur.png


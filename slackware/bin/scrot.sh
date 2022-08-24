#!/bin/sh

fname=$(date +'%Y-%m-%d_%H-%M-%S')
folder=$HOME/Pictures/screenshots

xfce4-screenshooter -f -s $folder/$fname.png && notify-send "Screenshot
saved"


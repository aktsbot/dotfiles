#!/usr/bin/env bash

scr_dir="${HOME}/Pictures/Screenshots"

# Use printf to store the current date/time as variables.
printf -v date "%(%F)T"
printf -v time "%(%I-%M-%S)T"

# Create current date format.
mkdir -p "${scr_dir}/${date}"

# Name the screenshot
scr="${scr_dir}/${date}/${date}-${time}.png"

# Send the notification
notify-send -t 111 "Saved screenshot as ${scr/*\/}"

scrot "$scr"

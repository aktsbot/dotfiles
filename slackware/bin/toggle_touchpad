#!/bin/bash

touchpad_id=$(xinput list  | grep Touchpad | cut -d'=' -f2 | awk '{ print $1 }')

if [[ $(xinput list "$touchpad_id" | grep -Ec "disabled") -eq 1 ]]; then
    xinput enable "$touchpad_id"
    DISPLAY=:0 notify-send "Touchpad enabled"
else
    xinput disable "$touchpad_id"
    DISPLAY=:0 notify-send "Touchpad disabled"
fi

exit 0

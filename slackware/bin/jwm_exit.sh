#!/bin/bash

_text="What would you like to do?"
action=$(yad --width 300 --title "System shutdown" --center --on-top --skip-taskbar --window-icon=gnome-shutdown --timeout=30 --undecorated \
    --image=system-shutdown \
    --text "$_text" \
    --button="Exit:10" --button="Reboot:20" --button="Power Off:30")
ret=$?

#echo $ret

case $ret in
    30) sudo poweroff ;;
    20) sudo reboot ;;
    10) jwm -exit ;;
    *) ;;
esac


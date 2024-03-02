#!/bin/bash
# lowbattery - sends noisy error if battery low with option to shut down
# Idea (probably code too) came from Dave at antix - BobC - bcurrey99 at yahoo.com

MESSAGE="Battery is low. Please plug in your computer before you loose work"
TITLE="BATTERY EXTREMELY LOW!"

PERCENT="$(awk '{ sum += $1 } END { print sum }' /sys/class/power_supply/BAT*/capacity)"
MIN="33"
AC_ONLINE="$(cat /sys/class/power_supply/AC/online)"

if [ "$PERCENT" -lt $MIN  ] && [ "$AC_ONLINE" != "1" ]
then
    notify-send -u critical "$TITLE" "$MESSAGE"
fi



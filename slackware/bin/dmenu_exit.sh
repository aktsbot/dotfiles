#!/bin/sh

f="snap:size=8"
#f="Monospace:bold:size=10"
#f="Helvetica:bold:size=9"
NORMAL_BACKGROUND="#4E0000"
NORMAL_FOREGROUND="#cccccc"
SELECTED_BACKGROUND="#A52525"
SELECTED_FOREGROUND="white"

alias WM_EXIT_DMENU='dmenu \
  -fn "$f" \
  -nb "$NORMAL_BACKGROUND" \
  -nf "$NORMAL_FOREGROUND" \
  -sb "$SELECTED_BACKGROUND" \
  -sf "$SELECTED_FOREGROUND" \
	-p "Quit? "'

RET=$(echo -e "poweroff\nreboot\nexit\ncancel" | WM_EXIT_DMENU)

echo $RET

case $RET in
	poweroff) sudo poweroff ;;
	reboot) sudo reboot ;;
	exit) pkill X ;;
	*) ;;
esac

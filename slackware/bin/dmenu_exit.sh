#!/bin/sh

f="Monospace:bold:size=12"
NORMAL_BACKGROUND="darkred"
NORMAL_FOREGROUND="gray"
SELECTED_BACKGROUND="red"
SELECTED_FOREGROUND="white"

alias WM_EXIT_DMENU='dmenu -b \
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
	exit) jwm -exit ;;
	*) ;;
esac

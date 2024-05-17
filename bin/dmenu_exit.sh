#!/bin/sh

f="Monospace:bold:size=8"
NORMAL_BACKGROUND="#8A0200"
NORMAL_FOREGROUND="gray"
SELECTED_BACKGROUND="#AA5251"
SELECTED_FOREGROUND="white"

alias WM_EXIT_DMENU='dmenu \
	-fn "$f" \
  -nb "$NORMAL_BACKGROUND" \
  -nf "$NORMAL_FOREGROUND" \
  -sb "$SELECTED_BACKGROUND" \
  -sf "$SELECTED_FOREGROUND" \
	-p "Quit? "'

# find running wm
EXIT_CMD="pkill X";
if [ ! -z `pidof jwm` ]
then
    EXIT_CMD="jwm -exit"
fi

echo "exit command id " $EXIT_CMD

RET=$(echo -e "poweroff\nreboot\nexit\ncancel" | WM_EXIT_DMENU)

echo $RET

case $RET in
	poweroff) sudo poweroff ;;
	reboot) sudo reboot ;;
	exit) eval "$EXIT_CMD" ;;
	*) ;;
esac

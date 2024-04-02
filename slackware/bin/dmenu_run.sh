#!/bin/sh

f="Monospace:bold:size=12"
NORMAL_BACKGROUND="#000000"
NORMAL_FOREGROUND="#aaaaaa"
SELECTED_BACKGROUND="#333333"
SELECTED_FOREGROUND="#ffffff"

#dmenu_run \
#  -p "Run: " -fn "$f"

dmenu_run -b \
  -p "Run: " -fn "$f" \
  -nb "$NORMAL_BACKGROUND" \
  -nf "$NORMAL_FOREGROUND" \
  -sb "$SELECTED_BACKGROUND" \
  -sf "$SELECTED_FOREGROUND"


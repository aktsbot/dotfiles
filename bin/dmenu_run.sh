#!/bin/sh

f="Monospace:bold:size=10"
NORMAL_BACKGROUND="#000000"
NORMAL_FOREGROUND="#aaaaaa"
SELECTED_BACKGROUND="#5f005f"
SELECTED_FOREGROUND="#ffff00"

#dmenu_run \
#  -p "Run: " -fn "$f"

dmenu_run \
  -p "Run: " -fn "$f" \
  -nb "$NORMAL_BACKGROUND" \
  -nf "$NORMAL_FOREGROUND" \
  -sb "$SELECTED_BACKGROUND" \
  -sf "$SELECTED_FOREGROUND"


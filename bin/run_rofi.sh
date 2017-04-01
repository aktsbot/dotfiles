#!/bin/sh

SEL_BG="#000000"
SEL_FG="#F92672"
NORMAL_BG="#000000"
NORMAL_FG="#262626"


rofi -show run -lines 5 -eh 2 -width 100 -padding 500 -opacity "95" -bw 0 -bc "$NORMAL_BG" -bg "$NORMAL_BG" -fg "$NORMAL_FG" -hlbg "$SEL_BG" -columns 2 -font "nu 8" -hlfg "$SEL_FG"

exit 0

#!/bin/sh

synclient PalmDetect=1
xrdb -merge $HOME/.Xresources 
xset b off
setxkbmap -option caps:escape 
xset r rate 250 25 
xsetroot -cursor_name left_ptr 
xbacklight -set 80 &
redshift -o -l 0:0 -b 0.7 -t 6500:6500 &

~/.fehbg &
synclient VertEdgeScroll=1 HorizEdgeScroll=1 TapButton1=1 TapButton2=3  2>/dev/null &	
compton -b &
dunst &
# a few other apps are started from i3's config

exec ck-launch-session dbus-launch i3

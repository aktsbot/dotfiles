#!/bin/sh

xrdb -merge $HOME/.Xresources
xset b off
setxkbmap -option caps:escape
xset r rate 350 50
xsetroot -cursor_name left_ptr
/usr/lib64/xfce4/notifyd/xfce4-notifyd &
/usr/libexec/polkit-gnome-authentication-agent-1 &
#(sleep 1s && pcmanfm --desktop) &
thunar --daemon &
nitrogen --restore &
nm-applet &
redshift &
#pcmanfm -d &
start_pulseaudio.sh &
(sleep 1s && volumeicon) &
compton &
xfce4-clipman &
blueman-applet &
(sleep 1s && idesk) &
(sleep 1s && conky -c ~/.config/conky/conkyrc.lua) &


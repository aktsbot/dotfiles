#!/bin/sh

xrdb -merge $HOME/.Xresources
xset b off
setxkbmap -option caps:escape
xset r rate 350 50
xsetroot -cursor_name left_ptr

/usr/lib64/xfce4/notifyd/xfce4-notifyd &
/usr/libexec/polkit-gnome-authentication-agent-1 &

nm-applet &
redshift &
thunar --daemon &
picom &
start_pulseaudio.sh &
xfce4-clipman &
nitrogen --restore &
blueman-applet &
(sleep 1s && volumeicon) &

#kill -9 $(pgrep -f dwm_statusline_laptop.sh)
#dwm_statusline_laptop.sh &

kill -9 $(pgrep -f dwm_statusline.sh)
dwm_statusline.sh &

exec dwm


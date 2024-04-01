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

compton &

start_pulseaudio.sh &

pnmixer &

xfce4-clipman &

$HOME/.fehbg &

blueman-applet &

run_conky.sh &

dwm_statusline.sh &

exec dwm


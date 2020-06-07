#!/bin/sh

# prevent cursor movements, if I accidently touch the trackpad 
synclient PalmDetect=1
# load my colors, fonts and urxvt settings
xrdb -merge $HOME/.Xresources 
# disable beeps
xset b off
# remaps capslock to escape - mo powah baby!, when in vim
setxkbmap -option caps:escape
# faster key repeat rates - tweak values and hit up/down on a text file
# for  seeing how fast things are
xset r rate 250 25 
# no ugly X cursors
xsetroot -cursor_name left_ptr 
# dim brightness to x%
xbacklight -set 80 &
# color contrast setting
redshift -o -l 0:0 -b 0.7 -t 6500:6500 &
# clipboard manager
clipmenud &
# setting wallpaper
~/.fehbg &
# two finger scroll and all that jazz!
synclient VertEdgeScroll=1 HorizEdgeScroll=1 TapButton1=1 TapButton2=3  2>/dev/null &	
# compositing manager - compton is no longer maintained
#compton -b &
picom -CGb &
# notification daemon
dunst &
# terminal choice for champions. this runs a daemon in the background
# that urxvtc can connect to.
# I dont like color emojis anyway :(
urxvtd -q -o -f &

# Note: a few other apps are started from i3's config
# comment the next 5, if using i3

# since i moved to dwm, these came out from i3's config
/usr/libexec/polkit-gnome-authentication-agent-1 &
xfce4-power-manager &
thunar --daemon &
xautolock -time 10 -locker "slock" &

# status bar script for dwm
dwm_status &

# window manager galore
exec ck-launch-session dbus-launch dwm
#exec ck-launch-session dbus-launch i3
#exec ck-launch-session dbus-launch openbox-session
#exec ck-launch-session dbus-launch sowm
#exec ck-launch-session dbus-launch startfluxbox
#exec ck-launch-session dbus-launch jwm
#exec ck-launch-session dbus-launch bspwm

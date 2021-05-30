#!/bin/sh

# prevent cursor movements, if I accidently touch the trackpad 
synclient PalmDetect=1 &
# load my colors, fonts and urxvt settings
xrdb -merge $HOME/.Xresources & 
# disable beeps
xset b off &
# remaps capslock to escape - mo powah baby!, when in vim
setxkbmap -option caps:escape &
# faster key repeat rates - tweak values and hit up/down on a text file
# for  seeing how fast things are
xset r rate 350 50 &
# no ugly X cursors
xsetroot -cursor_name left_ptr & 
# dim brightness to x%
xbacklight -set 80 &
# color contrast setting
redshift -o -l 0:0 -b 0.7 -t 6500:6500 &
# clipboard manager
clipit &
# setting wallpaper
#~/.fehbg &
hsetroot -solid '#111111' &
# screen lock
xss-lock --transfer-sleep-lock -- slock &
# two finger scroll and all that jazz!
synclient VertEdgeScroll=1 HorizEdgeScroll=1 TapButton1=1 TapButton2=3  2>/dev/null &	
# compositing manager - compton is no longer maintained
#compton -b &
picom -CGb &
# notification daemon
dunst &
# polkit
/usr/libexec/polkit-gnome-authentication-agent-1 &
# volume applet
pasystray &
# choosing wifi & networks
nm-applet &
# hide cursor if idle
xbanish &

# dwm status line
status_line &

# window manager
exec dbus-launch --sh-syntax --exit-with-session dwm

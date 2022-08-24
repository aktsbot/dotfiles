#!/usr/bin/env bash

xmessage "What would you like to do?" -center -title "Exit session" -default "Shutdown" -buttons "Cancel":1,"Reboot":2,"Shutdown":3 

case $? in
    1)
        echo "Exit";;
    2)
        sudo reboot;;
    3)
        sudo poweroff;;
esac

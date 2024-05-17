#!/bin/sh

PID=$(pidof pulseaudio)

if [ -z $PID ]
then
    echo "Starting pulse audio"
    pulseaudio &
else
    echo "Pulseaudio already running"
fi


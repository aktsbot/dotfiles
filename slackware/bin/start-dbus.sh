#!/bin/sh

if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
   eval $(dbus-launch --sh-syntax --exit-with-session)
fi



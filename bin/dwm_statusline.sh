#!/bin/sh

load() {
  l="$(cat /proc/loadavg | cut -d" " -f 1-3 | sed -r 's/[ ]+/\//g')"

  printf '%s\n' "$l"
}

get_line() {
  LOAD=$(load)
  CLOCK=$(date "+%H:%M")

  echo "$LOAD $CLOCK"
}

while true
do
  xsetroot -name "$(get_line)"
  sleep 5s
done

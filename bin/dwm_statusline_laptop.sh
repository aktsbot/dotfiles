#!/bin/sh

bat() {
  status="*"
  percent="$(awk '{ sum += $1 } END { print sum }' /sys/class/power_supply/BAT*/capacity)"
  online="$(cat /sys/class/power_supply/BAT*/status | grep 'Charging')"

  if test -z "$online"
  then
    status=""
  fi

  printf '%s%s%%\n' "$status" "$percent"
}

get_line() {
  BAT=$(bat)
  CLOCK=$(date "+%H:%M")

  echo "$BAT $CLOCK"
}

while true
do
  battery_low_check.sh
  xsetroot -name "$(get_line)"
  sleep 20s
done

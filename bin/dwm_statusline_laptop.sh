#!/bin/sh

bat() {
  status="*"
  percent="$(awk '{ sum += $1 } END { print sum }' /sys/class/power_supply/BAT*/capacity)"
  online="$(acpi -V | grep 'on-line')"

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
  xsetroot -name "$(get_line)"
  sleep 20s
done

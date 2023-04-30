#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

pkill conky

sleep 2
run "conky -c $HOME/.config/i3/conky/conkyrc.left.lua"
sleep 1
run "conky -c $HOME/.config/i3/conky/conkyrc.right.lua"

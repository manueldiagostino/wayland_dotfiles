#!/bin/bash

EWW="$HOME/bin/eww -c $HOME/.config/eww/bar"

## Run eww daemon if not running already
if [[ ! `pidof eww` ]]; then
	${EWW} daemon
	sleep 1
fi

## Open widgets 
run_eww() {
	${EWW} open-many \
         bar bar_main
}

run_eww 

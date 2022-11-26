#!/bin/sh

function handle {
	if [[ ${1:0:12} == "monitoradded" ]]; then
    	hyprctl dispatch dpms off eDP-1
	fi
}

socat - UNIX-CONNECT:/tmp/hypr/$(echo $HYPRLAND_INSTANCE_SIGNATURE)/.socket2.sock | \
	while read line; do handle $line; done

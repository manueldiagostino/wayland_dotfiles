#!/bin/sh

function handle {
	if [[ ${1:0:12} == "monitoradded" ]]; then
    	hyprctl dispatch dpms off eDP-1
		hyprctl dispatch moveworkspacetomonitor "1 1"
		hyprctl dispatch moveworkspacetomonitor "2 1"
		hyprctl dispatch moveworkspacetomonitor "4 1"
		hyprctl dispatch moveworkspacetomonitor "5 1"
		hyprctl dispatch moveworkspacetomonitor "6 1"
		hyprctl dispatch moveworkspacetomonitor "3 0"
		hyprctl dispatch moveworkspacetomonitor "7 0"
		hyprctl dispatch moveworkspacetomonitor "8 0"
		hyprctl dispatch moveworkspacetomonitor "9 0"
		hyprctl dispatch moveworkspacetomonitor "10 0"
	elif [[ ${1:0:14} == "monitorremoved" ]]; then
		hyprctl dispatch dpms on eDP-1
		hyprctl dispatch moveworkspacetomonitor "1 0"
		hyprctl dispatch moveworkspacetomonitor "2 0"
		hyprctl dispatch moveworkspacetomonitor "4 0"
		hyprctl dispatch moveworkspacetomonitor "5 0"
		hyprctl dispatch moveworkspacetomonitor "6 0"
		hyprctl dispatch moveworkspacetomonitor "3 0"
		hyprctl dispatch moveworkspacetomonitor "7 0"
		hyprctl dispatch moveworkspacetomonitor "8 0"
		hyprctl dispatch moveworkspacetomonitor "9 0"
		hyprctl dispatch moveworkspacetomonitor "10 0"
	fi
}

socat - UNIX-CONNECT:/tmp/hypr/$(echo $HYPRLAND_INSTANCE_SIGNATURE)/.socket2.sock | \
	while read line; do handle $line; done

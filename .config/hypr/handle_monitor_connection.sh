#!/bin/sh

function handle {
	if [[ ${1:0:12} == "monitoradded" ]]; then
    	hyprctl keyword monitor DP-1,1920x1080@60,1920x0,1
		hyprctl keyword wsbind 1,DP-1
		hyprctl keyword wsbind 2,DP-1
		hyprctl keyword wsbind 3,DP-1
		hyprctl dispatch dpms off eDP-1
		hyprctl dispatch moveworkspacetomonitor "1 1"
		hyprctl dispatch moveworkspacetomonitor "2 1"
		hyprctl dispatch moveworkspacetomonitor "3 1"
		hyprctl dispatch moveworkspacetomonitor "4 1"
		hyprctl dispatch moveworkspacetomonitor "5 1"
		sleep 2
		hyprctl dispatch dpms off eDP-1
		hyprctl dispatch workspace 1
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
		hyprctl keyword wsbind 1,DP-1
		hyprctl dispatch workspace 1
	fi
}

socat - UNIX-CONNECT:/tmp/hypr/$(echo $HYPRLAND_INSTANCE_SIGNATURE)/.socket2.sock | \
	while read line; do handle $line; done

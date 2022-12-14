#!/usr/bin/sh

hyprctl monitors | grep HDMI
ret=$?

if [ $ret -eq 0 ]
then
	# hyprctl keyword monitor DP-1,1920x1080@60,0x0,1,mirror,eDP-1 && \
	hyprctl keyword monitor DP-1,1920x1080@60,1920x0,1 && \
	hyprctl keyword wsbind 1,DP-1 && \
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
fi

exit 0

#!/usr/bin/sh

sleep 1
killall xdg-desktop-portal-hyprland
killall xdg-desktop-portal-wlr
killall xdg-desktop-portal-kde
killall xdg-desktop-portal
/usr/lib/xdg-desktop-portal &
sleep 2
/usr/lib/xdg-desktop-portal-hyprland &
sleep 1

hyprctl monitors | grep HDMI
ret=$?

if [ $ret -eq 0 ]
then
	sleep 2
	# hyprctl keyword monitor DP-1,1920x1080@60,0x0,1,mirror,eDP-1 && \
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
	#hyprctl dispatch moveworkspacetomonitor "6 0"
	#hyprctl dispatch moveworkspacetomonitor "7 0"
	#hyprctl dispatch moveworkspacetomonitor "8 0"	
	#hyprctl dispatch moveworkspacetomonitor "9 0"
	#hyprctl dispatch moveworkspacetomonitor "10 0"
	hyprctl dispatch workspace 1
fi

exit 0

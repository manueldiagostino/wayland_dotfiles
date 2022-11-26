#!/usr/bin/sh

hyprctl monitors | grep HDMI
ret=$?

if [ $ret -eq 0 ]
then
	# hyprctl keyword monitor DP-1,1920x1080@60,0x0,1,mirror,eDP-1 && \
	hyprctl keyword monitor DP-1,1920x1080@60,1920x0,1 && \
	hyprctl keyword wsbind 2,DP-1 && \
	hyprctl dispatch dpms off eDP-1 
fi

systemctl --user status xdg-desktop-portal

exit 0

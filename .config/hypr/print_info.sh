#!/bin/sh

socat - UNIX-CONNECT:/tmp/hypr/$(echo $HYPRLAND_INSTANCE_SIGNATURE)/.socket2.sock | \
   	while read line; do echo $line; done

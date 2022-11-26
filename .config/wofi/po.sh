#!/bin/bash

entries="⇠ Logout\n⏾ Suspend\n⭮ Reboot\n⏻ Shutdown"

selected=$(echo -e "$entries" | wofi -i -d --prompt "Power menu" --location 1 --xoffset 15 --yoffset 15 --width 250 --lines 5 | awk '{print tolower($2)}')

echo "$selected"

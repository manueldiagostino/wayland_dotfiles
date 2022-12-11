#!/bin/bash

# kill other power_menu.sh processes
# list=$(ps -ef | grep /bin/bash /home/manuel/.config/wofi/power_menu.sh | awk '{ print $2 }')
killall -9 wofi

entries="⇠ Logout\n⏾ Suspend\n⭮ Reboot\n⏻ Shutdown"

selected=$(echo -e "$entries" | wofi -i -d -b --prompt "Power menu" --location 1 --xoffset 15 --yoffset 15 --width 250 --lines 5 | awk '{print tolower($2)}')

case $selected in
  logout)
    exec hyprctl dispatch exit 0;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac

#!/bin/sh

symbol() {
    [ $(cat /sys/class/net/w*/operstate) = down ] && echo  && exit
    echo 
}

name() {
    nmcli | grep "^wlp" | awk '{print $4}'
}

[ "$1" = "icon" ] && symbol && exit
[ "$1" = "name" ] && name && exit

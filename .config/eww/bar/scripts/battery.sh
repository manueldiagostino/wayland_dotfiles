#!/bin/sh

bat=/sys/class/power_supply/BAT0/
per="$(cat "$bat/capacity")"

icon() {

[ $(cat "$bat/status") = Charging ] && echo "" && exit

if [ "$per" -gt "90" ]; then
	icon=""
elif [ "$per" -gt "60" ]; then
	icon=""
elif [ "$per" -gt "50" ]; then
	icon=""
elif [ "$per" -gt "40" ]; then
	icon=""
elif [ "$per" -gt "30" ]; then
	icon=""
elif [ "$per" -gt "20" ]; then
	icon=""
elif [ "$per" -gt "10" ]; then
	icon=""
	notify-send -u critical "Battery Low" "Connect Charger"
elif [ "$per" -gt "0" ]; then
	icon=""
	notify-send -u critical "Battery Low" "Connect Charger"
else
        echo  && exit
fi
echo "$icon"
}

percent() {
echo $per
}

button_style() {
    green='#4fff2b'
    almost_green='#c0ff2b'
    yellow='#f8ff2b'
    orange='#ffae2b'
    red='#ff442b'
    danger='#ff0000'


    if [ "$per" -gt "80" ]; then
        color=$green
    elif [ "$per" -gt "60" ]; then
        color=$almost_green
    elif [ "$per" -gt "40" ]; then
        color=$yellow
    elif [ "$per" -gt "20" ]; then
        color=$orange
    elif [ "$per" -gt "10" ]; then
        color=$red
    elif [ "$per" -gt "0" ]; then
        color=$danger
    else
        exit
    fi
    
    echo "color: $color;"
}

label_style() {
    green='#4fff2b'
    almost_green='#c0ff2b'
    yellow='#f8ff2b'
    orange='#ffae2b'
    red='#ff442b'
    danger='#ff0000'


    if [ "$per" -gt "80" ]; then
        color=$green
    elif [ "$per" -gt "60" ]; then
        color=$almost_green
    elif [ "$per" -gt "40" ]; then
        color=$yellow
    elif [ "$per" -gt "20" ]; then
        color=$orange
    elif [ "$per" -gt "10" ]; then
        color=$red
    elif [ "$per" -gt "0" ]; then
        color=$danger
    else
        exit
    fi
    
    echo "color: $color; margin: 0 5px 0 0; font-size: 15px;"
}

[ "$1" = "icon" ] && icon && exit
[ "$1" = "percent" ] && percent && exit
[ "$1" = "button_style" ] && button_style && exit
[ "$1" = "label_style" ] && label_style && exit
exit

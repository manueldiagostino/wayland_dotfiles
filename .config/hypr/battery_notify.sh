#!/bin/bash

entered=0
charging=0

while true
do
	battery_level=$(acpi -b | grep -E -o '[0-9]?[0-9][0-9]{1,1}%'| tr -d '%')
	state=$(acpi -b | grep "Charging")

	if [[ $? -eq 0 ]];
	then
		charging=1
		entered=0
		echo "Charging..."
	else
		charging=0
	fi


	if [[ ($battery_level -le 25) && ($charging == 0) && ($entered == 0) ]];
	then
		dunstify -a "battery_low" -u critical -h string:x-dunst-stack-tag:"battery_low" \
			"Low battery level 🪫 $battery_level"
		entered=1
	elif [[ ($battery_level -le 5) && ($charging == 0) && ($entered == 1) ]];
	then
		dunstify -a "battery_low" -u critical -h string:x-dunst-stack-tag:"battery_low" \
			"Low battery level 🪫 $battery_level"
		entered=2
	fi

	sleep 60
done

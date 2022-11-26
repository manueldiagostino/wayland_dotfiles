#!/bin/bash
# changeVolume

# Arbitrary but unique message tag
msgTag="myvolume"

# Change the volume using pamixer
pamixer "$@" > /dev/null

# Get current volume
volume=$(pamixer --get-volume)

if [ $volume == 0 ] || [ $(pamixer --get-mute) == "true" ]; then 
	# Show the sound muted notification
    dunstify -a "changeVolume" -u low -i audio-volume-muted -h string:x-dunst-stack-tag:$msgTag "Volume muted 🔇"
else
	# Show the volume notification
    dunstify -a "changeVolume" -u low -i audio-volume-high -h string:x-dunst-stack-tag:$msgTag \
    -h int:value:"$volume" "Volume: ${volume}% 🔊"
fi

# Play the volume changed sound
canberra-gtk-play -i audio-volume-change -d "changeVolume"




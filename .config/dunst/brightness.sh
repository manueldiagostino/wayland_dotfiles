#!/bin/bash
# changeBrightness

# Arbitrary but unique message tag
msgTag="mybrightnesss"

brightnessctl "$@" > /dev/null
brightness=$(brightnessctl g)


dunstify -a "changeBrightness" -u low -h string:x-dunst-stack-tag:$msgTag \
    -h int:value:"$brightness" "Luminosità: ${brightness}%"

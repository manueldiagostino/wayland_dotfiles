#!/bin/bash
currVolume=$(pactl get-sink-volume 0 | awk '{print $5}' | tr -d '%')
currMic=$(pactl get-source-volume 0 | awk '{print $5}' | tr -d '%')

[ "$1" == "get-volume" ] && \
    echo $currVolume && exit

[ "$1" == "get-mic" ] && \
    echo $currMic && exit

[[ ! -d "tmp" ]] && mkdir "tmp"

[ "$1" == "set-volume" ] && \
    if [[ $2 -ne 0 ]] 
    then
        pactl set-sink-volume 0 "$2%" && echo "" > ./tmp/vol
    else
        pactl set-sink-volume 0 "$2%" && echo "" > ./tmp/vol
    fi && \
    echo "Volume modificato"


[ "$1" == "set-mic" ] && \
    if [[ $2 -ne 0 ]] 
    then
        pactl set-source-volume 0 "$2%" && echo "" > ./tmp/mic
    else
        pactl set-source-volume 0 "$2%" && echo "" > ./tmp/mic
    fi && \
    echo "Microfono modificato"

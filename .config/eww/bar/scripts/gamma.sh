#!/bin/bash

[[ ! -d "tmp" ]] && mkdir "tmp"

val=$(busctl --user introspect rs.wl-gammarelay / rs.wl.gammarelay | grep ".Temperature" | tail -1 | awk '{print $4}')

[ "$1" == "get" ] && \
    if [[ $val -eq 6500 ]] 
    then 
        echo "" 
    else 
        echo ""
    fi \
    && exit

[ "$1" == "set" ] && \
if [[ $val -eq 6500 ]]
then
    busctl --user -- set-property rs.wl-gammarelay / rs.wl.gammarelay Temperature q 4500 && echo "" > tmp/gamma
else
    busctl --user -- set-property rs.wl-gammarelay / rs.wl.gammarelay Temperature q 6500 && echo "" > tmp/gamma
fi \
&& exit

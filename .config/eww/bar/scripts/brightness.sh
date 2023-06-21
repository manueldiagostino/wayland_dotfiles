#!/bin/bash

[ "$1" = "get" ] && echo `busctl --user introspect rs.wl-gammarelay / rs.wl.gammarelay | grep ".Brightness" | tail -1 | awk '{print $4*100}'` && exit

echo $1 | \
    awk '{ system("busctl --user -- set-property rs.wl-gammarelay / rs.wl.gammarelay Brightness d " $1 / 100.0) }' && \
    exit


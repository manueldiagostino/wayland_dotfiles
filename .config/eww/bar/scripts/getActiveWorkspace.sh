#!/bin/bash

echo `hyprctl activeworkspace | awk '{if($1 == "workspace") print $3}'`

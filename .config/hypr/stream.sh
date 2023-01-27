#!/bin/bash
first_ans="y\n"
second_ans="2"

# modprobe -r v4l2loopback
modprobe v4l2loopback video_nr=6,7
echo -e "Y\n2" | wf-recorder --muxer=v4l2 --codec=rawvideo --file=/dev/video6 -x yuv420p &
sleep 5
ffmpeg -f v4l2 -i /dev/video6 -vf "hflip" -f v4l2 /dev/video7

#!/bin/bash
first_ans="y\n"
second_ans="2"

# modprobe -r v4l2loopback
echo "Benvenuto, inserisci la password di sudo"
sudo modprobe v4l2loopback video_nr=6,7

echo "Quale monitor vuoi registrare? [1,2]"
read second_ans
echo -e "Y \n $second_ans" | wf-recorder --muxer=v4l2 --codec=rawvideo --file=/dev/video6 -x yuv420p --force-yuv
#sleep 5
#ffmpeg -f v4l2 -i /dev/video6 -vf "hflip" -f v4l2 /dev/video7

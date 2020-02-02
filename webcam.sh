#!/bin/bash

# Top level script to take, annotate, re-size and upload webcam images.
# Probably called from a cron task.

if [[ $# -ne 2 ]]; then
    echo "Please specify the camera number and ftp password, e.g. webcam.sh 1 secret"
    exit 2
fi

cameraNumber=$1
dir=/tmp

echo $(date) - $0 for camera number $1

cd $dir

weatherJson=weather.json
weatherTxt=weather.txt

original=original.jpg
small=ydsc_webcam_${cameraNumber}_small.jpg
medium=ydsc_webcam_${cameraNumber}_medium.jpg
large=ydsc_webcam_${cameraNumber}_large.jpg

# First delete any / all files from a previous run
rm *.tmp
rm *.jpg

# Take a picture and annotate it with the weather text
~/bin/take-a-pic.sh $original $weatherTxt

# Re-size the image to large / medium / small
# width, height but constrained to original aspect ratio.
~/bin/resize.sh $original $large 1440 1080
~/bin/resize.sh $original $medium 1200 1024
# 100 x 75 matches the ydsc website
~/bin/resize.sh $original $small 100 75

# Upload via ftp to yorkshiredales.sc
~/bin/upload.sh $small $medium $large $2

cd ~
exit 0


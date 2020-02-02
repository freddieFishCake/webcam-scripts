#!/bin/bash

# Top level script to take, annotate, re-size and upload webcam images.
# Probably called from a cron task.

cameraNumber=0
dir=/tmp

echo $(date) - $0

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
# height, width but constrained to original aspect ratio.
~/bin/resize.sh $original $large 1440 1080
~/bin/resize.sh $original $medium 1024 1200
~/bin/resize.sh $original $small 256 320

# Upload via ftp to yorkshiredales.sc
~/bin/upload.sh $small $medium $large

cd ~
exit 0


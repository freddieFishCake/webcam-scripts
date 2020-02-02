#!/bin/bash

# -vf vertical flip
# -hf horizontal flip
# -t evaluation time, milli seconds, minimum 2000, default 5000
# -w width
# -h height
# -q quality, 0 .. 100
echo $0: taking a picture, annotating with $2 and storing as $1

raspistill -vf -hf -t 5000 -w 2592 -h 1944 -q 70 \
 --exposure auto --metering matrix -awb auto --brightness 45 --saturation -10 -drc low  \
 -o $1 \
 --annotate 12 \
 --annotate "Image taken at %Y-%m-%d %H:%M\n $(< $2)" \
 --annotateex 48,0x00

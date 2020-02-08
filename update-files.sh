#!/bin/bash

# Download or update files

cd ~/bin

URL=https://raw.githubusercontent.com/freddieFishCake/webcam-scripts

./get-file.sh $URL master get-file.sh
./get-file.sh $URL master get-weather.sh
./get-file.sh $URL master interpret.sh
./get-file.sh $URL master resize.sh
./get-file.sh $URL master take-a-pic.sh
./get-file.sh $URL master truncate-logs.sh
./get-file.sh $URL master update-files.sh
./get-file.sh $URL master upload.sh
./get-file.sh $URL master webcam.sh

chmod +x *.sh

# where is interpret-weather.jar?

cd ~

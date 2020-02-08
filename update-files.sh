#!/bin/bash

# Download or update files

cd ~/bin

./getfile.sh https://github.com/freddieFishCake/webcam-scripts/blob master get_file.sh
./getfile.sh https://github.com/freddieFishCake/webcam-scripts/blob master get-weather.sh
./getfile.sh https://github.com/freddieFishCake/webcam-scripts/blob master interpret.sh
./getfile.sh https://github.com/freddieFishCake/webcam-scripts/blob master resize.sh
./getfile.sh https://github.com/freddieFishCake/webcam-scripts/blob master take-a-pic.sh
./getfile.sh https://github.com/freddieFishCake/webcam-scripts/blob master truncate-logs.sh
./getfile.sh https://github.com/freddieFishCake/webcam-scripts/blob master update-files.sh
./getfile.sh https://github.com/freddieFishCake/webcam-scripts/blob master upload.sh
./getfile.sh https://github.com/freddieFishCake/webcam-scripts/blob master webcam.sh

chmod +x *.sh

# where is interpret-weather.jar?

cd ~

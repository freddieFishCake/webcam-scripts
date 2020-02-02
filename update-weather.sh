#!/bin/bash


dir=/tmp
weatherJson=weather.json
weatherTxt=weather.txt

# The 15 minute averages are not available immediately
# Potentially we could fetch one-minute values and calculate a 10 minute moving average..
sleep 50s

rm $dir/$weatherJson
rm $dir/$weatherTxt

# Next get the latest weather as a json file
~/bin/get-weather.sh $dir/$weatherJson

# Convert the json to readable text
~/bin/interpret.sh $dir/$weatherJson $dir/$weatherTxt
echo "$(<$dir/$weatherTxt)"

exit 0


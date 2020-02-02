#!/bin/bash

# Get the latest weather from Holfuy api
echo $0: writing the latest weather to $1
curl -o $1 'http://api.holfuy.com/live/?s=1159&m=JSON&tu=C&pw=9lVW1nC24FfxZZi&su=knots&batt&utc&avg=1&daily'

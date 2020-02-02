#!/bin/bash

echo "$0": resizing "$1" to "$2" at size $3 x $4
convert "$1" -auto-orient -resize "$3x$4>" "$2"


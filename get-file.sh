#!/bin/sh

# Fetches a single file from GitHub using curl.

# Curl notes:
# -O forces local file to have same name as remote file
# -L follows a re-direct if the remote file has changed to a new location
# -R forces local file to have same timestamp as remote file
# -z only download if remote file is newer than local file 

# base URL
URL=$1
# GitHub version or branch
VERSION=$2
# File to download
FILE=$3

# test if file exists first
if [ ! -f $FILE ]; then
    echo "Downloading $FILE with version $VERSION from $URL ..."
    curl -R -O -L $URL/$VERSION/$FILE
else
    echo "File $FILE already exists, downloading from $URL if newer than local copy..."
    curl -R -O -L -z $FILE $URL/$VERSION/$FILE
fi

#!/bin/bash

# Download or update files

cd ~/bin

URL=https://github.com/freddieFishCake/webcam-scripts/archive/
VERSION=0.1
REPOSITORY=webcam-scripts
UNZIP=v$VERSION.tar
ZIP=$UNZIP.gz
URL=https://github.com/freddieFishCake/$REPOSITORY/archive/

./get-file.sh $URL $ZIP

gunzip $ZIP

tar -xvf $UNZIP

mv $REPOSITORY-$VERSION/* .

chmod +x *.sh

cd ~

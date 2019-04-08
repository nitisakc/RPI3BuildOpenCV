#!/bin/bash

OPENCV_VERSION=3.4.2
OPENCV_SOURCE_DIR=$HOME
INSTALL_UTILITIES=YES
FREEUP=YES

echo "This script will build and install OpenCV 3.4.2 on Raspberry PI 3B+"

if [ $INSTALL_UTILITIES == "YES" ] ; then
  echo "Installing utilities"
  sudo apt-get install -y screen
  sudo apt-get install -y htopcd /arch/arm64/configs/
	sudo wget -O /usr/local/bin/rsub \https://raw.github.com/aurora/rmate/master/rmate 
  sudo chmod a+x /usr/local/bin/rsub
fi

if [ $FREEUP == "YES" ] ; then
  echo "Free up 1GB+"
  sudo apt-get purge wolfram-engine
	sudo apt-get purge libreoffice*
	sudo apt-get clean
	sudo apt-get autoremove
fi

echo "Installing dependencies..."
sudo apt-get update

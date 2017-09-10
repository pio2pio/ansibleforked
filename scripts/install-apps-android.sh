#!/bin/bash

printf "****************\nInstalling Android Studio\n****************\n"
URL="https://dl.google.com/dl/android/studio/ide-zips/2.3.3.0/"
ZIP="android-studio-ide-162.4069837-linux.zip"
DIR="android-studio"

# Pull
wget ${URL}${ZIP} -P ~/Downloads
sudo unzip ~/Downloads/${ZIP} -d /usr/lib

# Install
/usr/lib/${DIR}/bin/studio.sh

# Cleanup
rm ~/Downloads/${ZIP}


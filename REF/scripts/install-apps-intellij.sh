#!/bin/bash

printf "****************\nInstalling Android Studio\n****************\n"
URL="https://download-cf.jetbrains.com/idea/"
ZIP="ideaIC-2017.2.3.tar.gz"
DIR="idea-IC-172.3968.16"

# Pull
wget ${URL}${ZIP} -P ~/Downloads
sudo tar -xzf ~/Downloads/${ZIP} -C /usr/lib

# Install
/usr/lib/${DIR}/bin/idea.sh

# Cleanup
rm ~/Downloads/${ZIP}


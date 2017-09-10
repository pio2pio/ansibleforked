#!/bin/bash

printf "****************\nInstalling Google Chrome\n****************\n"
URL="https://dl.google.com/linux/direct/"
DEB_FILE="google-chrome-stable_current_amd64.deb"

# Pull & Install
wget ${URL}${DEB_FILE} -P ~/Downloads
sudo dpkg -i ~/Downloads/${DEB_FILE}

# Cleanup
rm ~/Downloads/${DEB_FILE}


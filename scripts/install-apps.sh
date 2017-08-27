#!/bin/bash

printf "****************\nInstalling 32bit libraries\n****************\n"
# 64bit ubuntu is missing some 32 libraries, this resolves
sudo apt-get -y install libc6-i386 
sudo apt-get -y install lib32z1
sudo apt-get -y install lib32ncurses5
sudo apt-get -y install lib32stdc++6

printf "****************\nInstalling Applications\n****************\n"
sudo apt-get -y install vim
sudo apt-get -y install gradle
sudo apt-get -y install tree
sudo apt-get -y install vlc
sudo apt-get -y install xclip
sudo apt-get -y install baobab
sudo apt-get -y install ruby
sudo apt-get -y install python3-pip
sudo apt-get -y install indicator-sysmonitor
sudo apt-get -y install terminator


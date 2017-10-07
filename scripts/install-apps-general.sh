#!/bin/bash

printf "****************\nInstalling Bootstap\n****************\n"
sudo apt-get -y install python-pip
sudo apt-get -y install python3-pip

printf "****************\nInstalling 32bit libraries\n****************\n"
# 64bit ubuntu is missing some 32 libraries, this resolves
sudo apt-get -y install libc6-i386 
sudo apt-get -y install lib32z1
sudo apt-get -y install lib32ncurses5
sudo apt-get -y install lib32stdc++6

printf "****************\nInstalling APT Applications\n****************\n"
# sudo apt-get -y install vim                          [~/scripts/install-apps-vim.sh]
sudo apt-get -y install tree
sudo apt-get -y install vlc
sudo apt-get -y install xclip
sudo apt-get -y install baobab
sudo apt-get -y install ruby
sudo apt-get -y install indicator-sysmonitor
sudo apt-get -y install terminator
sudo apt-get -y install keychain

printf "****************\nInstalling PIP Applications\n****************\n"
sudo pip install powerline-shell


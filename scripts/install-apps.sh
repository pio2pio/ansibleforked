#!/bin/bash

printf "****************\nInstalling Applications\n****************\n";
sudo apt-get -y install vim
sudo apt-get -y install gradle
sudo apt-get -y install tree
sudo apt-get -y install vlc
sudo apt-get -y install xclip
sudo apt-get -y install baobab
sudo apt-get -y install libc6-i386 ; # 64bit ubuntu is missing some 32 libraries, this resolves


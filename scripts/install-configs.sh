#!/bin/bash

printf "****************\nInstalling Config\n****************\n";
#git clone git@github.com:OurFriendIrony/home.git ~
#sudo git clone git@github.com:OurFriendIrony/home.git /root
cp ./config/gitconfig ~/.gitconfig
cp ./config/bashrc ~/.bashrc
sudo cp ./config/bashrc /root/.bashrc
cp ./config/bash_functions ~/.bash_functions
cp ./config/bash_aliases ~/.bash_aliases

# Powerline
cp ./config/powerline-shell.json ~/.powerline-shell.json
sudo cp ./config/powerline-shell.json /root/.powerline-shell.json

# System mem/cpu indicator
cp ./config/indicator-sysmonitor.json ~/.indicator-sysmonitor.json
mkdir -p ~/.config/autostart
cp ./config/autostart/indicator-sysmonitor.desktop ~/.config/autostart/

# Terminator
mkdir -p ~/.config/terminator
cp ./config/terminator ~/.config/terminator/config

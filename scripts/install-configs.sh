#!/bin/bash

printf "****************\nInstalling Config\n****************\n";
sudo cp ./config/gitconfig ~/.gitconfig
# sudo cp ./config/vimrc ~/.vimrc                          [~/scripts/install-apps-vim.sh]
sudo cp ./config/bashrc ~/.bashrc
sudo cp ./config/bash_functions ~/.bash_functions
sudo cp ./config/bash_aliases ~/.bash_aliases

# System mem/cpu indicator
sudo cp ./config/indicator-sysmonitor.json ~/.indicator-sysmonitor.json
sudo mkdir -p ~/.config/autostart
sudo cp ./config/autostart/indicator-sysmonitor.desktop ~/.config/autostart/

# Terminator
sudo mkdir -p ~/.config/terminator
sudo cp ./config/terminator ~/.config/terminator/config

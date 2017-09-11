#!/bin/bash

printf "****************\nInstalling Config\n****************\n";
cp ./config/gitconfig ~/.gitconfig
# cp ./config/vimrc ~/.vimrc                          [~/scripts/install-apps-vim.sh]
cp ./config/bashrc ~/.bashrc
cp ./config/bash_functions ~/.bash_functions
cp ./config/bash_aliases ~/.bash_aliases

# Powerline
cp ./config/powerline-shell.json ~/.powerline-shell.json

# System mem/cpu indicator
cp ./config/indicator-sysmonitor.json ~/.indicator-sysmonitor.json
mkdir -p ~/.config/autostart
cp ./config/autostart/indicator-sysmonitor.desktop ~/.config/autostart/

# Terminator
mkdir -p ~/.config/terminator
cp ./config/terminator ~/.config/terminator/config

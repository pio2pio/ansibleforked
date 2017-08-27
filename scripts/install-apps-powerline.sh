#!/bin/bash

printf "****************\nInstalling Powerline\n****************\n"
sudo pip3 install --user powerline-status

wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf

sudo mv PowerlineSymbols.otf /usr/local/share/fonts/
sudo fc-cache -fv
sudo mkdir -p ~/.config/fontconfig/fonts.conf
sudo mv 10-powerline-symbols.conf ~/.config/fontconfig/fonts.conf/


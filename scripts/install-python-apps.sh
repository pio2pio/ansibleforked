#!/bin/bash

printf "****************\nInstalling Python libraries\n****************\n"
sudo pip3 install --user powerline-status

wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
sudo mv PowerlineSymbols.otf /usr/local/share/fonts/
sudo fc-cache -f -v
wget https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mkdir -p ~/.config/fontconfig/fonts.conf
sudo mv 10-powerline-symbols.conf ~/.config/fontconfig/fonts.conf/


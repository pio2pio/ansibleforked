#!/bin/bash

printf "****************\nInstalling Python libraries\n****************\n"
pip3 install --user powerline-status
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
sudo mv PowerlineSymbols.otf /usr/local/share/fonts/
sudo fc-cache -f -v


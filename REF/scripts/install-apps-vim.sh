#!/bin/bash

printf "****************\nInstalling Vim and Vundle\n****************\n"
# Install
sudo apt-get -y install vim

# Setup Vundle
     git clone https://github.com/gmarik/vundle.git      ~/.vim/bundle/vundle
sudo git clone https://github.com/gmarik/vundle.git      /root/.vim/bundle/vundle

# Config
     cp ./cfg/.vimrc                                     ~            # [vim]
sudo cp ./cfg/.vimrc                                     /root        # [vim]

# Setup powerline fonts
sudo mkdir -p /usr/local/share/fonts
     mkdir -p ~/.config/fontconfig/fonts.conf

sudo wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf      -P /usr/local/share/fonts/
     wget https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf -P ~/.config/fontconfig/fonts.conf/

sudo fc-cache -fv

# Install Vundle plugins
     vim +PluginInstall +qall
sudo vim +PluginInstall +qall


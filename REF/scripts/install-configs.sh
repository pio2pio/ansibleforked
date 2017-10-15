#!/bin/bash

printf "****************\nInstalling Config\n****************\n";

# Root Dirs
sudo mkdir -p  /etc/ansible

# Dirs
     mkdir -p  ~/.aws
     mkdir -p  ~/.config/autostart
     mkdir -p  ~/.config/terminator
     mkdir -p  ~/.config/keychain
     mkdir -p  ~/.config/wallpapers

# Root User
sudo cp        ./cfg/.bashrc                           /root        # [Bash]
sudo cp        ./cfg/.bash_functions                   /root        # [Bash]
sudo cp        ./cfg/.bash_aliases                     /root        # [Bash]
sudo cp        ./cfg/.powerline-shell.json             /root        # [Powerline]
sudo cp        ./cfg/etc/ansible/ansible.cfg           /etc/ansible # [Ansible]

# User
     cp        ./cfg/.gitignore                        ~            # [Git]
     cp        ./cfg/.gitconfig                        ~            # [Git]
     cp        ./cfg/.bashrc                           ~            # [Bash]
     cp        ./cfg/.bash_functions                   ~            # [Bash]
     cp        ./cfg/.bash_aliases                     ~            # [Bash]
     cp        ./cfg/.powerline-shell.json             ~            # [Powerline]
     cp        ./cfg/.indicator-sysmonitor.json        ~            # [SysMonitor]
     cp    -rf ./cfg/.aws                              ~            # [AWS]
     cp    -rf ./cfg/.config                           ~            # [autostart] [Terminator] [desktopimages]


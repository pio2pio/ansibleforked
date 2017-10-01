#!/bin/bash

printf "****************\nInstalling Config\n****************\n";

# Dirs
mkdir -p ~/.config/autostart
mkdir -p ~/.config/terminator

# User
     cp     ./cfg/.gitignore                        ~            # [Git]
     cp     ./cfg/.gitconfig                        ~            # [Git]
     cp     ./cfg/.bashrc                           ~            # [Bash]
     cp     ./cfg/.bash_functions                   ~            # [Bash]
     cp     ./cfg/.bash_aliases                     ~            # [Bash]
     cp     ./cfg/.powerline-shell.json             ~            # [Powerline]
     cp     ./cfg/.indicator-sysmonitor.json        ~            # [SysMonitor]
     cp -rf ./cfg/.config                           ~            # [autostart] [Terminator]

# Root User
sudo cp     ./cfg/.bashrc                           /root        # [Bash]
sudo cp     ./cfg/.bash_functions                   /root        # [Bash]
sudo cp     ./cfg/.bash_aliases                     /root        # [Bash]
sudo cp     ./cfg/.powerline-shell.json             /root        # [Powerline]


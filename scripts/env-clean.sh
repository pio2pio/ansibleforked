#!/bin/bash

printf "****************\nCleaning up\n****************\n";
sudo apt-get check
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get autoremove

printf "****************\nSystem 'Fix'\n****************\n";
sudo apt-get install -yf
sudo dpkg --configure -a


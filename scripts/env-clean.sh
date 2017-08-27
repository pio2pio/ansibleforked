#!/bin/bash

printf "****************\nCleaning up\n****************\n";
sudo apt-get check
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get autoremove


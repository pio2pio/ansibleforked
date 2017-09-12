#!/bin/bash

printf "****************\nInstalling Docker\n****************\n"
sudo apt-get -y install docker-ce
sudo chmod 666 /var/run/docker.sock


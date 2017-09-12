#!/bin/bash

printf "****************\nAdding additional apt-get repos\n****************\n";
sudo add-apt-repository -y ppa:webupd8team/java                  ; # Java Installer
sudo add-apt-repository -y ppa:fossfreedom/indicator-sysmonitor  ; # RAM/CPU Monitor
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

printf "****************\nUpdate System\n****************\n";
sudo apt-get update
sudo apt-get -y upgrade


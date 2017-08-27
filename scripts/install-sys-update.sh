#!/bin/bash

printf "****************\nAdding additional apt-get repos\n****************\n";
sudo add-apt-repository -y ppa:webupd8team/java                  ; # Java Installer
sudo add-apt-repository -y ppa:fossfreedom/indicator-sysmonitor  ; # RAM/CPU Monitor

printf "****************\nUpdate System\n****************\n";
sudo apt-get update
sudo apt-get -y upgrade


#!/bin/bash

printf "****************\nAdding additional apt-get repos\n****************\n";
sudo add-apt-repository ppa:webupd8team/java ; # Java Installer repos

printf "****************\nUpdate System\n****************\n";
sudo apt-get update
sudo apt-get -y upgrade


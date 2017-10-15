#!/bin/bash

printf "****************\nInstalling AWS\n****************\n"
sudo pip install awscli

printf "****************\nInstalling Terraform\n****************\n"
git clone https://github.com/kamatama41/tfenv.git ~/.tfenv
export PATH="${HOME}/.tfenv/bin:$PATH"                              # [ Temp path tweak ]
tfenv install 0.10.2
tfenv install latest

printf "****************\nInstalling Anisible\n****************\n"
sudo pip install ansible


## Pre-Req
#### Ubuntu
- none

#### RetroPie
- Connect Wifi
- sudo raspi-config
  - 5 --> 2 [Turn on SSH client]
  - 7 --> 1 [Expand FileSystem]
___

## Bootstap
```
sudo apt-get install -y python-pip git \
&& sudo pip install ansible \
&& git clone https://github.com/OurFriendIrony/ubuntu-setup.git /tmp/ansible \
&& cd /tmp/ansible
```

## Run
`./go.sh -p ubuntu -s -d`  
`./go.sh -p retropie -s -d`

## Help
`./go.sh -h`

___
## Module index
All Modules are documented [**here**](http://docs.ansible.com/ansible/latest/list_of_all_modules.html)


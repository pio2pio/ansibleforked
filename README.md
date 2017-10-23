## Bootstap
```
sudo apt-get install -y python-pip git \
&& sudo pip install ansible \
&& git clone https://github.com/OurFriendIrony/ubuntu-setup.git /tmp/ansible \
&& cd /tmp/ansible \
&& git checkout ansiblise
```

## Run
`./go.sh -p ubuntu -s -d`

## Help
`./go.sh -h`

## Module index
All Modules are documented [**here**](http://docs.ansible.com/ansible/latest/list_of_all_modules.html)
____

## Bugs
- Java
  - JAVA_HOME set to a dir that is completely empty...
  - unpack must not be working. libs going somewhere else?
 

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

___
## Bugs
- prereqs
  - autoremove failed - it seems like you cant run this as a standalone library, it needs to be as part of an "absent" apt module call
  - autoclean failed - dito?
- vim
  - doesnt have Plugins applied for user
  - If you run ":PluginUpdate" against the user it doesnt work
  - Permissions on "~/.vim" dir are wrong - change these to "user" before running plugin update
- wallpaper
  - Runs, but doesnt appear to actually change the background
  - permissions? running as wrong person?
  

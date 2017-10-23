#!/bin/bash
echo $(pwd)/scripts/setup.sh
source $(pwd)/scripts/setup.sh

#######################################################################

ansible all -m setup --tree $(pwd)/ansible-sys/facts/dist/ -a "filter=*dist*" >> /dev/null
ansible all -m setup --tree $(pwd)/ansible-sys/facts/all/                      >> /dev/null

for fact in $(find $(pwd)/ansible-sys/facts/ -name "*" -type f); do
  echo ${fact}
  # cat "${fact}" | python -m json.tool > "${fact}"
  # sleep 5
done


#!/bin/bash
source ./scripts/setup.sh

#######################################################################
# Functions


usage () {
  PRG=$(basename $0)
  echo "$PRG -p PLAYBOOK [-v VERBOSITY] [-d] [-s] [-h]"
  echo "     -a PLAYBBOOK     path to playbook"
  echo "     -v VERBOSITY     v, vv, vvv, vvvv"
  echo "     -d               show diffs"
  echo "     -s               run as sudo"
  echo "     -h               show help"
  exit 0
}

get_playbook () {
  playbook="playbooks/${1}.yml"
  echo $playbook
}

#######################################################################
# Get Input

while getopts ":p:v:dsh" arg; do
  case $arg in
    p)
      playbook=$(get_playbook "${OPTARG}")
      ;;
    v)
      verbosity="-${OPTARG}"
      ;;
    d)
      diff="--diff"
      ;;
    s)
      sudo="--ask-become-pass"
      ;;
    h)
      usage
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

# Check mandatory fields
mandatory_fields=( "playbook" )
mandatory_fields_set=true
for arg in ${mandatory_fields[@]}; do
  if [ -z "${!arg}" ]; then
    echo "Missing argument: ${arg^^}"
    mandatory_fields_set=false
  fi
done
if [ ${mandatory_fields_set} = false ]; then
  usage
  exit 1
fi

# Check playbook exists
if [ ! -f ${playbook} ]; then
  echo "'${playbook}' does not exist"
  exit 1
fi

#######################################################################

exe="ansible-playbook ${playbook} ${verbosity} ${diff} ${sudo}"
echo "${exe}"
eval "${exe}"


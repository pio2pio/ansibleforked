# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
  debian_chroot=$(cat /etc/debian_chroot)
fi

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#####################################################################
# Aliases and Functions

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

alias ll='ls -AlF'
alias la='ls -A'
alias l='ls -CF'

if [ -f ~/.bash_functions ]; then
  . ~/.bash_functions
fi
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

#####################################################################
# Powerline Shell

function _update_ps1() {
  PS1="$(powerline-shell $?)"
}

if [ "$TERM" != "linux" ]; then
  PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

#####################################################################
# Keychain

KEYCHAIN_CONFIG="${HOME}/.config/keychain/config"
if [ -f "${KEYCHAIN_CONFIG}" ]; then
  while read line; do
    ssh_key="${HOME}/.ssh/${line}"
    if [ -f "${ssh_key}" ]; then
      chmod 600 "${ssh_key}"
      key_chain="${key_chain} ${ssh_key}"
    fi
  done < "${KEYCHAIN_CONFIG}"

  if [ ! -z "${key_chain}" ]; then
    /usr/bin/keychain ${key_chain}
    source ~/.keychain/${HOSTNAME}-sh
  fi
fi

#####################################################################
# Exports

## AWS
  export AWS_ACCT_ID="847108765099"
  export AWS_ACCESS_KEY="AKIAIPBHHX3MTYMQPPRA"

## Path
  export JAVA_HOME="/usr/lib/jvm/java-8-oracle"
  export GRADLE_HOME="/usr/lib/gradle/gradle-4.1"
  export TERRAFORM_HOME="${HOME}/.tfenv"

  export PATH="${TERRAFORM_HOME}/bin:${JAVA_HOME}/bin:${GRADLE_HOME}/bin:${PATH}"

#####################################################################


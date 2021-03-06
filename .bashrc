#
# ~/.bashrc
#

## If not running interactively, don't do anything
[[ $- != *i* ]] && return

################################################

##ibus vars
export GTK_IM_MODULE="ibus"
export XMODIFIERS=@im="ibus"
export QT_IM_MODULE="ibus"

##function to jump to a switch section of man pages
function manswitch () { man $1 | less -p "^ +$2"; }

##history settings
#don't write commands with space infront to history file
HISTCONTROL=ignorespace

# Infinite history.
HISTSIZE=
HISTFILESIZE=

##Allows you to cd into directory merely by typing the directory name.
shopt -s autocd

## Default prompt theme
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

## Gruvbox vim theme color solution
source "$HOME/.local/share/nvim/plugged/gruvbox/gruvbox_256palette.sh"

##Source aliases and env_vars files
source ~/.aliases
source ~/.env_vars

##autocompletion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

##git prompt
GIT_PROMPT_THEME=Minimal
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
fi

##nvm stuff
export NVM_DIR="$HOME/.nvm"

# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

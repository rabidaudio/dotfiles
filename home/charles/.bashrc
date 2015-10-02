#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# command not found
[ -r /etc/profile.d/cnf.sh ] && . /etc/profile.d/cnf.sh

# implicit cd with just directory
shopt -s autocd

# colorized git prompt
source /usr/share/git/completion/git-prompt.sh


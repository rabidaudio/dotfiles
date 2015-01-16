#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#alias php='/opt/lampp/bin/php'

med(){
# do a recursive grep for a search term and open all matching files in gedit
if [ -z "$1" ]; then
    echo "give search term"
else
    #echo $1
    gedit `grep -r -l $1 | sed 's/:.*//'`
fi
}
npml() {
  npm list $@ | grep ^[├└]
}

#alias npml=npml

export EDITOR="gedit"

subl(){
	/usr/bin/subl . 2>/dev/null
}

#git aliases
alias gs='git status'
alias ga='git add -A .'
alias gc='git commit'
alias gp='git push'
alias gd='git diff'
alias grh='git add -A . && git reset --hard HEAD'
alias gch='git clone'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/opt/lampp/bin # Add LAMPP bin to PATH

#### odroid build stuff
export PATH=${PATH}:/opt/toolchains/arm-eabi-4.6/bin
export CROSS_COMPILE=arm-eabi-

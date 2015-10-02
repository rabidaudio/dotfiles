#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source ~/.profile

export EDITOR=nano
export GIT_EDITOR=$EDITOR
export VISUAL=gedit

npml() {
  npm list $@ | grep ^[├└]
}

#git aliases
alias gs='git status'
alias ga='git add -A .'
alias gc='git commit'
alias gp='git push'
alias gd='git diff'
alias grh='git add -A . && git reset --hard HEAD'

complete -cf sudo
complete -cf man
complete -cf which
complete -cf time

#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

source ~/.profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


#Python env stuff
#source "/usr/bin/virtualenvwrapper.sh"
#export PYTHONPATH=:/home/charles/code_for_atlanta/open_elections/core/openelex

#merge pdfs into one
function pdfmerge(){ gs -q -sPAPERSIZE=letter -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=$1 ${*:2}; }

export NVM_DIR="/home/charles/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

alias matlab="/opt/MATLAB/R2012a_Student/bin/matlab -glnx86"

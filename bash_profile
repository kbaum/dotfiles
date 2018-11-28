set -o vi
export EDITOR=vim

source ~/.git-completion.bash
source ~/.aliases
source ~/.functions

#chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

source ~/.paths
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

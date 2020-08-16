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
export HISTTIMEFORMAT="%d/%m/%y %T "

export YVM_DIR=/usr/local/opt/yvm
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh

ulimit -n 7000

set -o vi
export EDITOR=vim

source ~/.git-completion.bash
source ~/.aliases
source ~/.functions

#chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby 2.4.4

source ~/.paths

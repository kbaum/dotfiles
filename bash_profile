[ -r ~/.bashrc ] && source ~/.bashrc

set -o vi

export EDITOR=vim
#git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

source ~/.aliases
source ~/.functions


export PATH="/usr/local/bin:$PATH"

#chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby 2.4.4

#binstubs
export PATH="./.bin:$PATH"

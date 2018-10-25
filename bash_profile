[ -r ~/.bashrc ] && source ~/.bashrc

set -o vi

export EDITOR=vim
alias vi=vim

alias branches="git for-each-ref --sort=-committerdate refs/heads/ --format='%(committerdate:short) %(authorname) %(refname:short)' | more"

#git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

function fixup {
  git add . && git commit --fixup=$1 && git rebase -i --autosquash $1^
}

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

#python stuff
#VIRTUALENVWRAPPER_PYTHON=/usr/local/opt/python/libexec/bin/python
#source /usr/local/bin/virtualenvwrapper.sh
PATH=$PATH:~/Library/Python/2.7/bin/

export OVERCOMMIT_DISABLE=1

export SKIP_TEST_SEED=true

#deploy
. ~/.local.deploy

export PATH="~/bin:/usr/local/opt/postgresql@9.4/bin:/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

. ~/.git-completion.bash

#chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby 2.5.1

#binstubs
export PATH=$PWD/bin:$PATH
export PATH="./.bin:$PATH"

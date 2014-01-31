# Basic exports
export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
export CLICOLOR=yes
export LSCOLORS=gxfxcxdxbxegedabagacad
export EDITOR=vim
export HISTCONTROL=ignoreboth
export PS1='[\u@\h]$ '
export LESS='r'

# Aliases
alias ls="ls -G"
alias ll="ls -la"
alias rm="rm -i"
alias cp="cp -i"
alias j="jobs"
alias vi="/usr/bin/vim"
alias javac="javac -J-Dfile.encoding=UTF8"
## tmux
alias tl="tmux list-sessions"
## git
alias gdfh="git diff FETCH_HEAD"
## perl
alias perldoc="perldoc -M Pod::Text::Color::Delight"
## docker
alias dl='docker ps -l -q'

# Functions
## Perl
perltest () {
  perl ./Makefile.PL PREFIX=${HOME}/work/perl/modules/Testing
}
pmver () {
  perl -M$1 -l -e "print $1->VERSION;"
}
## Vagrant/Chef
vagchef () {
  (
  local host="$1"
  local box="$2"
  local repo="chef-repo"
  [ $# -lt 2 ] && echo "vagchef <host> <box>" && return 1
  vagrant init
  sed -e 's/config\.vm\.box = "base"/config.vm.box = "'"$box"'"/' -i '' Vagrantfile
  vagrant up
  vagrant ssh-config --host "$host" >> ${HOME}/.ssh/config
  knife solo init "$repo"
  git init && git add . && git commit -m 'first commit'
  cd "$repo"
  knife solo prepare "$host"
  knife cookbook create base -o site-cookbooks
  git add "nodes/$host.json" "site-cookbooks/base/"
  git commit -m 'add node json file and base cookbook'
  vagrant halt
  vagrant sandbox on
  vagrant sandbox commit
  vagrant up
  )
}

# PATH
export PATH=${HOME}/bin:/usr/local/bin:${PATH}

# *env settings
## rbenv
[ -d ${HOME}/.rbenv ] &&
  export PATH=${HOME}/.rbenv/shims:${PATH} &&
  eval "$(rbenv init -)"
## phpenv
[ -d ${HOME}/.phpenv ] &&
  export PATH=${HOME}/.phpenv/bin:${HOME}/.phpenv/shims:${PATH} &&
  eval "$(phpenv init -)"
## plenv
[ -d ${HOME}/.plenv ] &&
  export PATH=${HOME}/.plenv/bin:${HOME}/.plenv/shims:${PATH} &&
  eval "$(plenv init -)"
## pyenv
[ -d ${HOME}/.pyenv ] &&
  export PYENV_ROOT="$HOME/.pyenv" &&
  export PATH=${HOME}/.pyenv/shims:${PATH} &&
  eval "$(pyenv init -)"

# go
export PATH=${PATH}:/usr/local/go/bin
export GOPATH=${HOME}/go
export PATH=${GOPATH}/bin:${PATH}

export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8


export CLICOLOR=yes
export LSCOLORS=gxfxcxdxbxegedabagacad

export MANPATH=$MANPATH:/opt/local/man:/usr/local/man
export CVSROOT=${HOME}/repo_cvs
export CVSEDITOR=/usr/bin/vim
export EDITOR=vim

export HISTCONTROL=ignoreboth

#export PS1='[\u@\h \W]$ '
export PS1='[\u@\h]$ '

# PHP
#export PHPRC=${HOME}/PHP

# Python
export PYTHONSTARTUP=${HOME}/.pythonrc

#alias ls="ls -F"
alias ls="ls -G"
alias ll="ls -la"
alias rm="rm -i"
alias cp="cp -i"
alias j="jobs"
alias vi="/usr/bin/vim"
#alias mysql="/usr/local/mysql/bin/mysql"
#alias mysqladmin="sudo -u mysql /usr/local/mysql/bin/mysqladmin"
#alias mysql_safe="sudo -u mysql /usr/local/mysql/bin/mysqld_safe"
#alias mysql_stop="mysqladmin -u root shutdown"
#alias mysql_start="mysql_safe"

alias mail_start="sudo postfix start"
alias mail_stop="sudo postfix stop"

alias javac="javac -J-Dfile.encoding=UTF8"

alias rebashrc="$EDITOR ~/.bashrs; source ~/.bashrc"

alias crontab="EDITOR=/usr/bin/vi crontab"

# tmux
alias tl="tmux list-sessions"

# git
alias gdfh="git diff FETCH_HEAD"

# Perl
perltest () {
    perl ./Makefile.PL PREFIX=${HOME}/work/perl/modules/Testing
}
pmver () {
    perl -M$1 -l -e "print $1->VERSION;"
}

## Perl Module settings
# local::lib
#export MODULEBUILDRC="${HOME}/perl5/.modulebuildrc"
#export PERL_MM_OPT="INSTALL_BASE=${HOME}/perl5"
#export PERL5LIB="${HOME}/perl5/lib/perl5:${HOME}/perl5/lib/perl5/darwin-2level"
#export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:/usr/local/heroku/bin:${HOME}/perl5/bin:$PATH"

export LESS='r'

### Added by the Heroku Toolbelt
#export PATH="/usr/local/heroku/bin:$PATH"

# rbenv & phpenv & plenv
export PATH=${HOME}/.rbenv/shims:${HOME}/.rbenv/bin:${HOME}/.phpenv/bin:${HOME}/.plenv/shims:${PATH}
eval "$(rbenv init -)"
eval "$(phpenv init -)"
eval "$(plenv init -)"

export PATH=${HOME}/bin:${PATH}

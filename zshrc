setopt INTERACTIVE_COMMENTS
bindkey \^U backward-kill-line

export PS1="%2d$ "

# zsh-completions
if type brew &>/dev/null; then
        FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

        autoload -Uz compinit
        compinit
fi

# zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Basic exports
export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
export CLICOLOR=yes
export LSCOLORS=gxfxcxdxbxegedabagacad
export HISTCONTROL=ignoreboth
export LESS='r'

# Platform specific settings.
PLATFORM=$(uname)
case "$PLATFORM" in
        'Darwin')
                # macOS
                OPT_LS_COLOR='-G'
                ;;
        'Linux')
                # CentOS etc.
                OPT_LS_COLOR='--color'
                ;;
        *)
                echo "unsupported OS"
                exit 1
                ;;
esac

# Aliases
alias ls="ls $OPT_LS_COLOR"
alias ll="ls -la"
alias lt="ls -rlt"
alias rm="rm -i"
alias cp="cp -i"
alias j="jobs"
alias vi='vim'
alias javac="javac -J-Dfile.encoding=UTF8"

## tmux
alias tl="tmux list-sessions"

## git
alias gdfh="git diff FETCH_HEAD"

## perl
alias perldoc="perldoc -M Pod::Text::Color::Delight"

## 
alias tmux='TERM=xterm-256color tmux'

# PATH
export PATH=${HOME}/bin:/usr/local/bin:${PATH}

# go
export GOPATH=$HOME/gowork
export PATH=$PATH:$GOPATH/bin

# java
## http://qiita.com/hereticreader/items/79d9bddb77efaf2ca255
[ -e /usr/libexec/java_home ] && JAVA_HOME=$(/usr/libexec/java_home -v 11)

# node.js
export PATH="$HOME/.node/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# python
export PATH="$HOME/.pyenv/bin:$PATH"

# Chef
#[ -e ~/.chefdk ] && eval "$(chef shell-init bash)"

# Include external file if exists
[ -e $HOME/.zshrc_ext ] && source $HOME/.zshrc_ext

#export GEM_HOME=/Users/keisatou/.rbenv/versions/2.5.6/lib/ruby/gems/2.5.0
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

source <(kubectl completion zsh)

function mkkeys() {
    ssh-keygen -b 4096 -t rsa -f ~/id_rsa.`date '+%Y%m%d'`-$USER -C "$USER-`date '+%Y%m%d'`"
}

export PATH=$HOME/.cargo/bin:$PATH

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/gradle@6/bin:$PATH"

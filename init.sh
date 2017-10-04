#!/bin/sh

# Platform specific settings.
PLATFORM=$(uname)
case "$PLATFORM" in
    'Darwin')
        # Mac OSX
        OPT_LN_NOTRACK='h' # Do not track symlink.
        ;;
    'Linux')
        # CentOS etc.
        OPT_LN_NOTRACK='n' # Do not track symlink.
        ;;
    *)
        echo "unsupported OS"
        exit 1
        ;;
esac

# http://qiita.com/sirone/items/2e233ab9697a030f1335
echo '[install latest git]'
if [ "$(which git)" = '/usr/local/bin/git' ]; then
  echo '/usr/local/bin/git is already installed'
else
  (curl -s -o /tmp/git-2.14.2.tar.gz https://www.kernel.org/pub/software/scm/git/git-2.14.2.tar.gz
  tar zxf /tmp/git-2.14.2.tar.gz -C /tmp/
  cd /tmp/git-2.14.2
  make prefix=/usr/local all
  sudo make prefix=/usr/local install
  git --version)
fi

# get the directory name the dotfiles are in.
# (on the assumption that dot files are in the same directory as this script.)
# this way you can git-clone dotfile directory anywhere you like :)
cd `dirname $0`
DOTFILES=$PWD

if [ ! -d "$DOTFILES" ]
then
    echo "ERROR: dotfiles directory does not exist: $DOTFILES"
    exit 1
fi

ln -sf                      "$DOTFILES/vimrc"          "$HOME/.vimrc"
ln -sf${OPT_LN_NOTRACK}     "$DOTFILES/vim"            "$HOME/.vim"
ln -sf                      "$DOTFILES/tmux.conf"      "$HOME/.tmux.conf"
ln -sf                      "$DOTFILES/inputrc"        "$HOME/.inputrc"
# ln -sf                      "$DOTFILES/gitconfig"      "$HOME/.gitconfig"
# ln -sf${OPT_LN_NOTRACK}     "$DOTFILES/chef"           "$HOME/.chef"
ln -sf                      "$DOTFILES/bash_profile"   "$HOME/.bash_profile"
ln -sf                      "$DOTFILES/bashrc"         "$HOME/.bashrc"
ln -sf                      "$DOTFILES/gitignore"      "$HOME/.gitignore"

# install dein.vim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ${HOME}/.vim/dein
vim -c ':call dein#install()'

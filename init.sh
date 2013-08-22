#!/bin/sh

# default to "$HOME/Dropbox/dotfiles"
DOTFILES="${MY_DOTFILES_TARGET_DIR:-$HOME/Dropbox/dotfiles}"

if [ ! -d "$DOTFILES" ]
then
    echo "ERROR: dotfiles directory does not exist: $DOTFILES"
    exit 1
fi

cd $DOTFILES

git submodule update --init
git submodule foreach 'git checkout master'

ln -s $DOTFILES/vimrc          $HOME/.vimrc
ln -s $DOTFILES/vim            $HOME/.vim
ln -s $DOTFILES/tmux.conf      $HOME/.tmux.conf
ln -s $DOTFILES/inputrc        $HOME/.inputrc
ln -s $DOTFILES/gitconfig      $HOME/.gitconfig
ln -s $DOTFILES/chef           $HOME/.chef
ln -s $DOTFILES/bash_profile   $HOME/.bash_profile
ln -s $DOTFILES/bashrc         $HOME/.bashrc

vim -c ':BundleInstall!'

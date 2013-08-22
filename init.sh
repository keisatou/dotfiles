#!/bin/sh

DROPBOX_DIR="$HOME/Dropbox"
DOTFILES="$DROPBOX_DIR/dotfiles"

if [ ! -d "$DOTFILES" ]
then
    echo "Please create dotfiles to $DROPBOX_DIR"
    exit 1
fi

cd $DOTFILES

git submodule update --init
git checkout master

ln -s $DOTFILES/vimrc          $HOME/.vimrc
ln -s $DOTFILES/vim            $HOME/.vim
ln -s $DOTFILES/tmux.conf      $HOME/.tmux.conf
ln -s $DOTFILES/inputrc        $HOME/.inputrc
ln -s $DOTFILES/gitconfig      $HOME/.gitconfig
ln -s $DOTFILES/chef           $HOME/.chef
ln -s $DOTFILES/bash_profile   $HOME/.bash_profile
ln -s $DOTFILES/bashrc         $HOME/.bashrc

vim -c ':BundleInstall!'

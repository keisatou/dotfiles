#!/bin/sh

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

git submodule update --init
git submodule foreach 'git checkout master'

ln -sf      "$DOTFILES/vimrc"          "$HOME/.vimrc"
ln -sfh     "$DOTFILES/vim"            "$HOME/.vim"
ln -sf      "$DOTFILES/tmux.conf"      "$HOME/.tmux.conf"
ln -sf      "$DOTFILES/inputrc"        "$HOME/.inputrc"
ln -sf      "$DOTFILES/gitconfig"      "$HOME/.gitconfig"
ln -sfh     "$DOTFILES/chef"           "$HOME/.chef"
ln -sf      "$DOTFILES/bash_profile"   "$HOME/.bash_profile"
ln -sf      "$DOTFILES/bashrc"         "$HOME/.bashrc"
ln -sf      "$DOTFILES/gitignore"      "$HOME/.gitignore"

vim -c ':NeoBundleInstall!'

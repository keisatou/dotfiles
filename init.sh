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

ln -sf                      "$DOTFILES/vimrc"          "$HOME/.vimrc"
ln -sf${OPT_LN_NOTRACK}     "$DOTFILES/vim"            "$HOME/.vim"
ln -sf                      "$DOTFILES/tmux.conf"      "$HOME/.tmux.conf"
ln -sf                      "$DOTFILES/inputrc"        "$HOME/.inputrc"
ln -sf                      "$DOTFILES/gitconfig"      "$HOME/.gitconfig"
ln -sf${OPT_LN_NOTRACK}     "$DOTFILES/chef"           "$HOME/.chef"
ln -sf                      "$DOTFILES/bash_profile"   "$HOME/.bash_profile"
ln -sf                      "$DOTFILES/bashrc"         "$HOME/.bashrc"
ln -sf                      "$DOTFILES/gitignore"      "$HOME/.gitignore"

vim -c ':NeoBundleInstall!'

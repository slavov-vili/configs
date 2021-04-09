#!/bin/bash

DIR=$(pwd)
VIM_DIR="~/.vim"
mkdir $VIM_DIR

# Make links to the rc files and vim's home folder
ln -svf $DIR/vimrc     ~/.vimrc
ln -svf $DIR/gvimrc    ~/.gvimrc
ln -svf $DIR/ideavimrc ~/.ideavimrc
ln -svnFf $DIR/vim/*   $VIM_DIR

# "Install" vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# To install plugins: Run ":PlugInstall" in vim

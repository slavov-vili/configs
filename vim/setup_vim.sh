#!/bin/bash

# Store the path to this file
DIR=$(pwd)

# remove the files in case they already exist
rm ~/.vimrc
rm ~/.gvimrc
rm ~/.ideavimrc
rm -r ~/.vim

# Make links to all vim-related files and folders
ln -sf $DIR/vimrc     ~/.vimrc
ln -sf $DIR/gvimrc    ~/.gvimrc
ln -sf $DIR/ideavimrc ~/.ideavimrc
ln -sf $DIR/vim       ~/.vim

# "Install" vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

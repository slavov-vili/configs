#!/bin/bash

DIR=$(pwd)

# Make links to all vim-related files and folders
ln -svf $DIR/vimrc     ~/.vimrc
ln -svf $DIR/gvimrc    ~/.gvimrc
ln -svf $DIR/ideavimrc ~/.ideavimrc
ln -svf $DIR/vim       ~/.vim

# "Install" vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

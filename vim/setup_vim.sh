#!/bin/bash

# Store the path to this file
DIR=$(pwd)

# Make links to all vim-related files and folders
ln -sf $DIR/vimrc     ~/.vimrc
ln -sf $DIR/gvimrc    ~/.gvimrc
ln -sf $DIR/vim       ~/.vim

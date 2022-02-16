#!/bin/bash

DIR=$(pwd)
VIM_DIR=" $HOME/.vim"
mkdir $VIM_DIR

cp --verbose --force --remove-destination $DIR/vimrc     $HOME/.vimrc
cp --verbose --force --remove-destination $DIR/gvimrc    $HOME/.gvimrc
cp --force --remove-destination --recursive $DIR/vim/*   $VIM_DIR/

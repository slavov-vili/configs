#!/bin/bash

DIR=$(pwd)
VIM_DIR=" $HOME/.config/nvim/"
mkdir $VIM_DIR

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp --verbose --force --remove-destination $DIR/init.vim  $VIM_DIR/init.vim
cp --verbose --force --remove-destination $DIR/gvimrc    $HOME/.gvimrc

cp --verbose --force --remove-destination --recursive $DIR/colors  $VIM_DIR/colors
cp --verbose --force --remove-destination --recursive $DIR/plugin  ~/.local/share/nvim/site/


#!/bin/bash

# construct the main vimrc
# add 3 lines of space between the conents of each file
cp  ./vimrc_base         ./vimrc
echo -e "\n\n\n"      >> ./vimrc
cat ./vimrc_settings  >> ./vimrc
echo -e "\n\n\n"      >> ./vimrc
cat ./vimrc_keymaps   >> ./vimrc
echo -e "\n\n\n"      >> ./vimrc
cat ./vimrc_others    >> ./vimrc
echo -e "\n\n\n"      >> ./vimrc
cat ./vimrc_functions >> ./vimrc

# Make links to all vim-related files and folders
ln -srf ./vimrc     ~/.vimrc
ln -srf ./gvimrc    ~/.gvimrc
ln -srf ./ideavimrc ~/.ideavimrc
ln -srf ./vim       ~/.vim

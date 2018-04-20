#!/bin/bash

# Store the path to this file
DIR=$(pwd)

# remove the files in case they already exist
rm ~/.gitconfig

# Make links to all git-related files and folders
ln -s $DIR/gitconfig     ~/.gitconfig

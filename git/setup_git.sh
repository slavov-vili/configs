#!/bin/bash

# Store the path to this file
DIR=$(pwd)

# Make links to all git-related files and folders
ln -sf $DIR/gitconfig     ~/.gitconfig

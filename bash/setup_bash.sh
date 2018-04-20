#!/bin/bash

# Store the path to this file
DIR=$(pwd)

# remove the files in case they already exist
rm ~/.bashrc
rm ~/.bash_profile

# Make links to all bash-related files
ln -s $DIR/bash_profile ~/.bash_profile
ln -s $DIR/bashrc       ~/.bashrc

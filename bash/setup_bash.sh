#!/bin/bash

# Store the path to this file
DIR=$(pwd)

# Make links to all bash-related files
ln -sf $DIR/bash_profile ~/.bash_profile
ln -sf $DIR/bashrc       ~/.bashrc

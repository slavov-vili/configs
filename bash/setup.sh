#!/bin/bash

DIR=$(pwd)

# Make links to all bash-related files
ln -svf $DIR/bash_profile ~/.bash_profile
ln -svf $DIR/bashrc       ~/.bashrc

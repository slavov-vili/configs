#!/bin/bash

DIR=$(pwd)

# Create link to the config files
ln -svf $DIR/bash_profile $HOME/.bash_profile
ln -svf $DIR/bashrc       $HOME/.bashrc
ln -svf $DIR/inputrc       $HOME/.inputrc

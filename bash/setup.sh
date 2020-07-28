#!/bin/bash

DIR=$(pwd)

# Create link to the config files
ln -svf $DIR/bash_profile ~/.bash_profile
ln -svf $DIR/bashrc       ~/.bashrc

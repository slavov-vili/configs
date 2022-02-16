#!/bin/bash

DIR=$(pwd)

cp --verbose --force --remove-destination $DIR/bash_profile $HOME/.bash_profile
cp --verbose --force --remove-destination $DIR/bashrc       $HOME/.bashrc
cp --verbose --force --remove-destination $DIR/inputrc       $HOME/.inputrc

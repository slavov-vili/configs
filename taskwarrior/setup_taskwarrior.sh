#!/bin/bash

# Store the path to this file
DIR=$(pwd)

# make a link to taskrc
ln -sf $DIR/taskrc ~/.taskrc
echo "!!! REMINDER: Don't forget to recover your backed up data files."
echo "    Data files go in '~/.task'."

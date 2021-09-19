#!/bin/bash

DIR=$(pwd)

# Make link to the config file
ln -svf $DIR/taskrc $HOME.taskrc
echo "!!! REMINDER: Don't forget to recover your backed up data files."
echo "    Data files go in ' $HOME.task'."

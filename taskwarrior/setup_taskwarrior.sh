#!/bin/bash

# make links to all taskwarrior-related files and folders
ln -srf ./taskrc ~/.taskrc
echo "!!! REMINDER: Don't forget to recover your backed up data files."
echo "    Data files go in '~/.task'."

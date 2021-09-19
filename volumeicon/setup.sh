#!/bin/bash

DIR=$(pwd)

# Create link to the config file
# Reconfiguring breaks stuff and idk why :(
# Maybe "volumenicon" just writes a new file instead of editing the existing one?
ln -vf $DIR/volumeicon $HOME.config/volumeicon/volumeicon

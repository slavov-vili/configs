#!/bin/bash

DIR=$(pwd)

# Reconfiguring breaks stuff and idk why :(
# Maybe "volumenicon" just writes a new file instead of editing the existing one?
ln -vf $DIR/volumeicon    ~/.config/volumeicon/volumeicon


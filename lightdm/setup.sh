#!/bin/bash

DIR=$(pwd)

# Reconfiguring breaks stuff and idk why :(
sudo ln -vf $DIR/lightdm.conf /etc/lightdm/lightdm.conf



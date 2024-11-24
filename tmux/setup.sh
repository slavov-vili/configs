#!/bin/bash

DIR=$(pwd)

cp --verbose --force --remove-destination $DIR/tmux.conf $HOME/.config/tmux/tmux.conf

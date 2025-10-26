#!/bin/bash

DIR=$(pwd)
TMUX_DIR="$HOME/.config/tmux"

mkdir -p $TMUX_DIR
cp --verbose --force --remove-destination $DIR/tmux.conf $TMUX_DIR/tmux.conf

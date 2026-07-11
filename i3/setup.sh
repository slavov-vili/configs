#!/bin/bash

DIR=$(pwd)

cp --verbose --force --remove-destination $DIR/config $HOME/.config/i3/config
cp --verbose --force --remove-destination $DIR/*.conf $HOME/.config/i3/


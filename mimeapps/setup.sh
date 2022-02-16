#!/bin/bash

DIR=$(pwd)

cp --verbose --force --remove-destination $DIR/mimeapps.list $HOME/.config/mimeapps.list

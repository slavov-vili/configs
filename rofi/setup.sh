#!/bin/bash

DIR=$(pwd)

ROFI_DIR=$HOME/.config/rofi

mkdir -p $ROFI_DIR

# Main config
ln -svf $DIR/config.rasi $ROFI_DIR/config.rasi
ln -svf $DIR/keybinds.rasi $ROFI_DIR/keybinds.rasi

# Various widgets
ln -svnFf $DIR/widgets $ROFI_DIR/widgets

# Launch scripts
ln -svnFf $DIR/scripts $ROFI_DIR/scripts

# Color themes
ln -svnFf $DIR/themes  $ROFI_DIR/themes

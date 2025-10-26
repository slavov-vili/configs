#!/bin/bash

DIR=$(pwd)

ROFI_DIR=$HOME/.config/rofi

mkdir -p $ROFI_DIR

cp --verbose --force --remove-destination $DIR/config.rasi $ROFI_DIR/config.rasi
cp --verbose --force --remove-destination $DIR/keybinds.rasi $ROFI_DIR/keybinds.rasi

echo 'Copying rofi directories'
cp --force --remove-destination --recursive $DIR/widgets $ROFI_DIR/widgets
cp --force --remove-destination --recursive $DIR/scripts $ROFI_DIR/scripts
cp --force --remove-destination --recursive $DIR/themes  $ROFI_DIR/themes

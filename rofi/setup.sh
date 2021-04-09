#!/bin/bash

DIR=$(pwd)

ROFI_DIR="~/.config/rofi"

mkdir -p $ROFI_DIR

# Main config
ln -svf $DIR/config.rasi $ROFI_DIR/config.rasi
ln -svf $DIR/keybinds.rasi $ROFI_DIR/keybinds.rasi

# Various themes
ln -svf $DIR/app_launcher.rasi    $ROFI_DIR/app_launcher.rasi
ln -svf $DIR/window_switcher.rasi $ROFI_DIR/window_switcher.rasi
ln -svf $DIR/file_launcher.rasi   $ROFI_DIR/file_launcher.rasi
ln -svf $DIR/keybind_viewer.rasi  $ROFI_DIR/keybind_viewer.rasi
ln -svf $DIR/powermenu.rasi       $ROFI_DIR/powermenu.rasi

# Launch scripts
ln -svf $DIR/app_launcher.sh    $ROFI_DIR/app_launcher.sh
ln -svf $DIR/window_switcher.sh $ROFI_DIR/window_switcher.sh
ln -svf $DIR/file_launcher.sh   $ROFI_DIR/file_launcher.sh
ln -svf $DIR/keybind_viewer.sh  $ROFI_DIR/keybind_viewer.sh
ln -svf $DIR/powermenu.sh       $ROFI_DIR/powermenu.sh

# Color themes
ln -svnFf $DIR/themes $ROFI_DIR/themes

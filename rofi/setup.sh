#!/bin/bash

DIR=$(pwd)

# Main config
ln -svf $DIR/config.rasi ~/.config/rofi/config.rasi
ln -svf $DIR/keybinds.rasi ~/.config/rofi/keybinds.rasi

# Various themes
ln -svf $DIR/app_launcher.rasi    ~/.config/rofi/app_launcher.rasi
ln -svf $DIR/window_switcher.rasi ~/.config/rofi/window_switcher.rasi
ln -svf $DIR/file_launcher.rasi   ~/.config/rofi/file_launcher.rasi
ln -svf $DIR/keybind_viewer.rasi  ~/.config/rofi/keybind_viewer.rasi
ln -svf $DIR/powermenu.rasi       ~/.config/rofi/powermenu.rasi

# Launch scripts
ln -svf $DIR/app_launcher.sh    ~/.config/rofi/app_launcher.sh
ln -svf $DIR/window_switcher.sh ~/.config/rofi/window_switcher.sh
ln -svf $DIR/file_launcher.sh   ~/.config/rofi/file_launcher.sh
ln -svf $DIR/keybind_viewer.sh  ~/.config/rofi/keybind_viewer.sh
ln -svf $DIR/powermenu.sh       ~/.config/rofi/powermenu.sh

# Color themes
ln -svnFf $DIR/themes ~/.config/rofi/themes

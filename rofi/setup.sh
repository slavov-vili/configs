#!/bin/bash

DIR=$(pwd)

# Make links to the various scripts and the corresponding themes
ln -svf $DIR/app_launcher.rasi ~/.config/rofi/app_launcher.rasi
ln -svf $DIR/window_switcher.rasi ~/.config/rofi/window_switcher.rasi

ln -svf $DIR/app_launcher.sh ~/.config/rofi/app_launcher.sh
ln -svf $DIR/window_switcher.sh ~/.config/rofi/window_switcher.sh


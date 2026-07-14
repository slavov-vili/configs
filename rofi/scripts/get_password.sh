#!/bin/bash

source $HOME/.config/rofi/scripts/rofi_menu.sh



PROMPT="Password:"
ROFI_OPTIONS+=(-scroll-method 0)



ENTRIES="$(find ~/.password-store/ -name "*.gpg" -printf "%P\\\n" | sed 's/\.gpg//g' | sort)"
CHOICE=$(launchMenu "$ENTRIES")
pass show --clip "$CHOICE"

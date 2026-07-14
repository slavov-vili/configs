#!/bin/bash

source $HOME/.config/rofi/scripts/rofi_menu.sh



PROMPT="One-Time-Password (OTP):"
ROFI_OPTIONS+=(-scroll-method 0)



ENTRIES="$(find ~/.password-store/ -name "*.gpg" -printf "%P\\\n" | sed 's/\.gpg//g' | sort)"
CHOICE=$(launchMenu "$ENTRIES")
pass otp --clip "$CHOICE"


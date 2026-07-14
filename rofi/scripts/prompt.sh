#!/bin/bash

source $HOME/.config/rofi/scripts/rofi_menu.sh

if [ $# -eq 0 ]; then
    echo "Usage: $(realpath $0) MESSAGE [COMMAND]"
    exit 1
fi


PROMPT=$1
RESULT_FORMAT="i"
THEME="$HOME/.config/rofi/widgets/prompt.rasi"

RESULT=$(launchMenu "No\nYes\n")

if [ $RESULT -eq 1 ] && [ -n "$2" ]; then
    eval $2
fi

echo $RESULT

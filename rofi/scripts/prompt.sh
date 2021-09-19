#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $(realpath $0) [MESSAGE] [COMMAND]"
    exit 1
fi


RESULT=$( echo -en "No\nYes\n" | rofi -theme  $HOME/.config/rofi/widgets/prompt.rasi -dmenu -p "$1")

if [ $RESULT == "Yes" ]; then
    eval $2
fi

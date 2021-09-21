#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $(realpath $0) MESSAGE [COMMAND]"
    exit 1
fi


RESULT=$( echo -en "No\nYes\n" | rofi -theme  $HOME/.config/rofi/widgets/prompt.rasi -dmenu -format i -p "$1")

if [ $RESULT -eq 1 ] && [ -n "$2" ]; then
    eval $2
fi

echo $RESULT

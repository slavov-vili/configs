#!/bin/bash

if [ $# -ne 2 ]; then
    echo 'Usage: prompt.sh [MESSAGE] [COMMAND]'
    exit 1
fi

sh ~/.config/rofi/scripts/prompt.sh "$1" "$2"

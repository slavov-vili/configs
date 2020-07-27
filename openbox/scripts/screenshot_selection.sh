#!/bin/bash

if [ "$1" = "--save" ]
then
    mkdir -p ~/Screenshots
    FILENAME="~/Screenshots/screenshot_$(date +%Y_%m_%d_%N).png"
    # FIXME: why you complain about reading file?
    # FIXME: Why doesn't selection box colro work???
    maim -s "$FILENAME"
else
    maim -s | xclip -selection clipboard -t image/png
fi


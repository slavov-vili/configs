#!/bin/bash

# TODO: Send notification that a screenshot was taken?
if [ "$1" = "--save" ]
then
    PATH_TO_SCREENSHOTS="${HOME}/Screenshots"
    mkdir -p $PATH_TO_SCREENSHOTS
    FILENAME="screenshot_$(date +%Y_%m_%d_%N).png"
    # FIXME: Why doesn't selection box color work???
    maim -s --bordersize=3 "$PATH_TO_SCREENSHOTS/$FILENAME"
else
    maim -s --bordersize=3 | xclip -selection clipboard -t image/png
fi


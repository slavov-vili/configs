#!/bin/bash

# TODO: Send notification that a screenshot was taken?
if [ "$1" = "--save" ]
then
    PATH_TO_SCREENSHOTS="${HOME}/Screenshots"
    mkdir -p $PATH_TO_SCREENSHOTS
    FILENAME="screenshot_$(date +%Y_%m_%d_%N).png"
    maim -i $(xdotool getactivewindow) "$PATH_TO_SCREENSHOTS/$FILENAME"
else
    maim -i $(xdotool getactivewindow) | xclip -selection clipboard -t image/png
fi


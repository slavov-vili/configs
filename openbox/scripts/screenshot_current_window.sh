#!/bin/bash

# TODO: Send notification that a screenshot was taken?
if [ "$1" = "--save" ]
then
    mkdir -p ~/Screenshots
    FILENAME="~/Screenshots/screenshot_$(date +%Y_%m_%d_%N).png"
    # FIXME: why you complain about reading file?
    maim -i $(xdotool getactivewindow) "$FILENAME"
else
    maim -i $(xdotool getactivewindow) | xclip -selection clipboard -t image/png
fi


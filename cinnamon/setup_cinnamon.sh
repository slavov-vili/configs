#!/bin/bash

# Store the path to this file
DIR=$(pwd)

# remove the files in case they already exist
rm -r ~/.cinnamon/configs/calendar@cinnamon.org
rm -r ~/.cinnamon/configs/menu@cinnamon.org
rm -r ~/.cinnamon/configs/show-desktop@cinnamon.org
rm -r ~/.cinnamon/configs/notifications@cinnamon.org
rm -r ~/.cinnamon/configs/sound@cinnamon.org
rm -r ~/.cinnamon/configs/panel-launchers@cinnamon.org
rm -r ~/.cinnamon/configs/user@cinnamon.org
rm -r ~/.cinnamon/configs/power@cinnamon.org
rm -r ~/.cinnamon/configs/window-list@cinnamon.org

# Make links to all cinnamon-related files and folders
ln -s $DIR/calendar@cinnamon.org        ~/.cinnamon/configs/calendar@cinnamon.org
ln -s $DIR/menu@cinnamon.org            ~/.cinnamon/configs/menu@cinnamon.org
ln -s $DIR/show-desktop@cinnamon.org    ~/.cinnamon/configs/show-desktop@cinnamon.org
ln -s $DIR/notifications@cinnamon.org   ~/.cinnamon/configs/notifications@cinnamon.org
ln -s $DIR/sound@cinnamon.org           ~/.cinnamon/configs/sound@cinnamon.org
ln -s $DIR/panel-launchers@cinnamon.org ~/.cinnamon/configs/panel-launchers@cinnamon.org
ln -s $DIR/user@cinnamon.org            ~/.cinnamon/configs/user@cinnamon.org
ln -s $DIR/power@cinnamon.org           ~/.cinnamon/configs/power@cinnamon.org
ln -s $DIR/window-list@cinnamon.org     ~/.cinnamon/configs/window-list@cinnamon.org

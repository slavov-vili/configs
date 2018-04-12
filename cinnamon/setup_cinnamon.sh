#!/bin/bash

# Store the path to this file
DIR=$(pwd)

# Make links to all cinnamon-related files and folders
ln -sf $DIR/calendar@cinnamon.org        ~/.cinnamon/configs/calendar@cinnamon.org
ln -sf $DIR/menu@cinnamon.org            ~/.cinnamon/configs/menu@cinnamon.org
ln -sf $DIR/show-desktop@cinnamon.org    ~/.cinnamon/configs/show-desktop@cinnamon.org
ln -sf $DIR/notifications@cinnamon.org   ~/.cinnamon/configs/notifications@cinnamon.org
ln -sf $DIR/sound@cinnamon.org           ~/.cinnamon/configs/sound@cinnamon.org
ln -sf $DIR/panel-launchers@cinnamon.org ~/.cinnamon/configs/panel-launchers@cinnamon.org
ln -sf $DIR/user@cinnamon.org            ~/.cinnamon/configs/user@cinnamon.org
ln -sf $DIR/power@cinnamon.org           ~/.cinnamon/configs/power@cinnamon.org
ln -sf $DIR/window-list@cinnamon.org     ~/.cinnamon/configs/window-list@cinnamon.org


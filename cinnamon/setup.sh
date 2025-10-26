#!/bin/bash

# Store the path to this file
DIR=$(pwd)

CINNAMON_DIR=" $HOME/.cinnamon/configs"

cp --verbose --force --remove-destination $DIR/calendar@cinnamon.org        $CINNAMON_DIR/calendar@cinnamon.org
cp --verbose --force --remove-destination $DIR/menu@cinnamon.org            $CINNAMON_DIR/menu@cinnamon.org
cp --verbose --force --remove-destination $DIR/show-desktop@cinnamon.org    $CINNAMON_DIR/show-desktop@cinnamon.org
cp --verbose --force --remove-destination $DIR/notifications@cinnamon.org   $CINNAMON_DIR/notifications@cinnamon.org
cp --verbose --force --remove-destination $DIR/sound@cinnamon.org           $CINNAMON_DIR/sound@cinnamon.org
cp --verbose --force --remove-destination $DIR/panel-launchers@cinnamon.org $CINNAMON_DIR/panel-launchers@cinnamon.org
cp --verbose --force --remove-destination $DIR/user@cinnamon.org            $CINNAMON_DIR/user@cinnamon.org
cp --verbose --force --remove-destination $DIR/power@cinnamon.org           $CINNAMON_DIR/power@cinnamon.org
cp --verbose --force --remove-destination $DIR/window-list@cinnamon.org     $CINNAMON_DIR/window-list@cinnamon.org

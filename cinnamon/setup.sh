#!/bin/bash

# Store the path to this file
DIR=$(pwd)

CINNAMON_DIR="~/.cinnamon/configs"

ln -svf $DIR/calendar@cinnamon.org        $CINNAMON_DIR/calendar@cinnamon.org
ln -svf $DIR/menu@cinnamon.org            $CINNAMON_DIR/menu@cinnamon.org
ln -svf $DIR/show-desktop@cinnamon.org    $CINNAMON_DIR/show-desktop@cinnamon.org
ln -svf $DIR/notifications@cinnamon.org   $CINNAMON_DIR/notifications@cinnamon.org
ln -svf $DIR/sound@cinnamon.org           $CINNAMON_DIR/sound@cinnamon.org
ln -svf $DIR/panel-launchers@cinnamon.org $CINNAMON_DIR/panel-launchers@cinnamon.org
ln -svf $DIR/user@cinnamon.org            $CINNAMON_DIR/user@cinnamon.org
ln -svf $DIR/power@cinnamon.org           $CINNAMON_DIR/power@cinnamon.org
ln -svf $DIR/window-list@cinnamon.org     $CINNAMON_DIR/window-list@cinnamon.org

DIR=$(pwd)

# TODO: Add more scripts from i.e. openbox/rofi

SCRIPTS_DIR="~/Scripts"

mkdir -p $SCRIPTS_DIR

cp -f $DIR/*.sh $SCRIPTS_DIR

rm $SCRIPTS_DIR/setup.sh


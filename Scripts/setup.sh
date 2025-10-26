DIR=$(pwd)

SCRIPTS_DIR=$HOME/Scripts

mkdir -p $SCRIPTS_DIR

cp --verbose --force --remove-destination $DIR/*.sh $SCRIPTS_DIR/

rm $SCRIPTS_DIR/setup.sh


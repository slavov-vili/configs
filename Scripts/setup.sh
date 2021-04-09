DIR=$(pwd)

SCRIPTS_DIR=$HOME/Scripts

mkdir -p $SCRIPTS_DIR

ln -svf $DIR/*.sh $SCRIPTS_DIR/

rm $SCRIPTS_DIR/setup.sh


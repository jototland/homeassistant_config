#! /bin/bash

DIR=$(realpath "$(dirname "$(readlink -f "$0")")"/..)
. $DIR/userconfig.txt

cd $DIR/venv
$PYTHON -m venv .
. bin/activate
pip3 install homeassistant
pip3 install appdaemon

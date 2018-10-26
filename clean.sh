#!/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

rm -rf $SCRIPTPATH/tmp
rm -rf $SCRIPTPATH/CA

mkdir -p $SCRIPTPATH/CA/newcerts
touch $SCRIPTPATH/CA/{serial,index.txt}
echo "00" > $SCRIPTPATH/CA/serial

mkdir $SCRIPTPATH/tmp
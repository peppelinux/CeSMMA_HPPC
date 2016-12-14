#!/bin/bash

# https://software.ecmwf.int/wiki/display/WEBAPI/Access+MARS

export BASEINST="/opt"
export NAMEINST=MARS.14.12.16
export INSTDIR=$BASEINST+$NAMEINST

aptitude install ipython python-dev python-pip
pip install pip --upgrade
pip install virtualenv

# voglio directory parlanti, se non abbiamo versione abbiamo data
virtualenv $INSTDIR
cd $INSTDIR




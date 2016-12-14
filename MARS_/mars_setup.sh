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

# attivo il virtualenv
source bin/activate

# installo il client
pip install https://software.ecmwf.int/wiki/download/attachments/56664858/ecmwf-api-client-python.tgz

# Login into https://apps.ecmwf.int/auth/login/ using the provided username and password.
# retrieve your key at https://api.ecmwf.int/v1/key/

# install mars script
mkdir MARS && cd MARS
wget https://software.ecmwf.int/wiki/download/attachments/56664858/mars
chmod 755 mars && mv mars ../bin/ && ln -s ../bin/mars .

# I need to make this setup as system wide, I need to avoid userspace costraints
# I need to patch lib/python2.7/site-packages/ecmwfapi/api.py
# line 63

#    rc = os.path.normpath(os.path.expanduser("~/.ecmwfapirc"))
#to
#    rc = os.path.normpath("$INSTDIR/MARS/ecmwfapirc")
#example
#    rc = os.path.normpath(os.path.expanduser("/opt/MARS.14.12.16/MARS/ecmwfapirc"))


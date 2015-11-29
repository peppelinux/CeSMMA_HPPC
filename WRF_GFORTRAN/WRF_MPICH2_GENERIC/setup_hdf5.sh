#!/bin/sh
set -e -x
rm -rf $HDF5_VERS
gzip -c -d $HDF5_VERS.tar.gz | tar -xo
cd $HDF5_VERS
./configure --prefix=$BASE_DIR/HDF5/$HDF5_VERS
make -j 9
make install

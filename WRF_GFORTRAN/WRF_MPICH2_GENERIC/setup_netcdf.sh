#!/bin/sh
set -e -x
rm -rf $NETCDF_VERS
gzip -c -d $NETCDF_VERS.tar.gz | tar -xo
cd $NETCDF_VERS
./configure --prefix=$BASE_DIR/netcdf/$NETCDF_VERS --disable-dap # --disable-netcdf-4
make -j 9
make check
make install

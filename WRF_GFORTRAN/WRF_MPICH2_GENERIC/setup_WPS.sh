#!/bin/bash

set -x

rm -R WPS
tar xzvf WPSV3.6.TAR.gz
cd WPS

./configure << EOF
1
EOF
sed -e "47s/netcdf/netcdf -lgomp/" configure.wps -i
sed "s|\../WRFV3|"$WRF_DIR"|" configure.wps -i

./compile

cd ..
ln -s $PWD/WPS $WPS_PATH

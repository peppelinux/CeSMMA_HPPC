#!/bin/bash

set -x

rm -R WPS
tar xzvf WPSV3.6.TAR.gz
mv WPS WPS_$WRF_VERS
cd WPS_$WRF_VERS

./configure << EOF
1
EOF
sed -e "47s/netcdf/netcdf -lgomp/" configure.wps -i
sed "s|\../WRFV3|"$WRF_DIR"|" configure.wps -i

./compile

cd ..
ln -s $PWD/WPS_$WRF_VERS $WPS_PATH

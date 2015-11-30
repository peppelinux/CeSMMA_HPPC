#!/bin/sh

#module load mpich-3.0.4 netcdf-3.6.3
set -e -x
#module list

rm -rf $WRF_VERS
mkdir $WRF_VERS
cd $WRF_VERS

for i in 34 35
do

mkdir WRF_${i}
tar xzvf ../$WRF_VERS.TAR.gz -C WRF_${i}
cd WRF_${i}/$WRF_BASE

./configure --prefix=$BASE_DIR/WRF_${i} << EOF
${i}
1
EOF
#export J="-j 2"
#./compile em_b_wave FCDEBUG=-g
#./compile -j 9 em_real  > build.log 2>&1 #&
./compile  em_real  > build.log 2>&1 #&
cd ../..

done

ln -s $PWD/WRF_34/$WRF_BASE $WRF_DIR

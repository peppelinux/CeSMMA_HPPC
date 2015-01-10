#!/bin/sh
set -e -x

export LDFLAGS=-L$DIR/grib2/lib
export CPPFLAGS=-I$DIR/grib2/include

# zlib
rm -rf $ZLIB_VERS
gzip -c -d $ZLIB_VERS.tar.gz | tar -xo
cd $ZLIB_VERS
./configure --prefix=$DIR/grib2
make -j 9
make check
make install
cd ..

sleep 5

# libpng
rm -rf $LIBPNG_VERS
tar xzvf $LIBPNG_VERS.tar.gz 
cd $LIBPNG_VERS
./configure --prefix=$DIR/grib2
make -j 9
make check
make install
cd ..

sleep 5

# jasper
rm -rf $JASPER_VERS
unzip $JASPER_VERS.zip
cd $JASPER_VERS
./configure --prefix=$DIR/grib2
make -j 9
make check
make install
cd ..

sleep 5


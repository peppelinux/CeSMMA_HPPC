#!/bin/sh
set -x
echo $MPICH_VERS
rm -rf $MPICH_VERS
gzip -c -d $MPICH_VERS.tar.gz | tar -xo
cd $MPICH_VERS
export CFLAGS=-g
export LDFLAGS=-g
./configure --prefix=$DIR/mpi/$MPICH_VERS --enable-shared
make -j 9
make install

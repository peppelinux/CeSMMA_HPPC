#!/bin/sh
set -x
echo $MPICH_VERS
rm -rf $MPICH_VERS
gzip -c -d $MPICH_VERS.tar.gz | tar -xo
cd $MPICH_VERS
export CFLAGS=-g
export LDFLAGS=-g
# If you’re using a QLogic InfiniBand adapter you should use…
# usiamo: 05:00.0 InfiniBand: QLogic Corp. IBA7322 QDR InfiniBand HCA (rev 02)
./configure --prefix=$DIR/$MPICH_VERS --with-device=ch3:psm
make -j 9
make install

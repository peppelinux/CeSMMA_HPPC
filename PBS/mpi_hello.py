#!/usr/bin/env python

# taken from
# https://github.com/jbornschein/mpi4py-examples/blob/master/01-hello-world

# require:
# libpython-dev mpich2 libmpich2-dev mpi4py (pip install mpi4py)

from mpi4py import MPI


comm = MPI.COMM_WORLD

name = MPI.Get_processor_name()


print "Hello! I'm rank %d from %d on %s running in total..." % (comm.rank, comm.size, name)

comm.Barrier()   # wait for everybody to synchronize _here_

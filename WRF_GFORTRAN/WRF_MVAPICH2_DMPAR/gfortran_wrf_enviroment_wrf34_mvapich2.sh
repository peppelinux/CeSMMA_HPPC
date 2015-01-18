
export CC=gcc
export CXX=g++
export FC=gfortran
export FCFLAGS=-m64
export F77=gfortran
export FFLAGS=-m64

export DIR=/home/gdemarco/usr_mvapich
export MPICH_VERS=mvapich2-2.1rc1
export HDF5_VERS=hdf5-1.8.13
export NETCDF_VERS=netcdf-3.6.3
export ZLIB_VERS=zlib-1.2.7
export LIBPNG_VERS=libpng-1.2.50
export JASPER_VERS=jasper-1.900.1
export WRF_VERS=WRFV3

export BASE_DIR=/home/gdemarco/Progs/WRF_mvapich2/
export WRF_DIR=$BASE_DIR/WRFV3/WRF_34/WRFV3
export rundir=$WRF_DIR/run_realtime

export NETCDF=$DIR/netcdf/$NETCDF_VERS
export MPI_ROOT=$DIR/$MPICH_VERS

# WRF compilation
export WRF_EM_CORE=1
export WRF_NMM_CORE=0
export WRF_DA_CORE=0
export JASPERLIB=$DIR/grib2/lib
export JASPERINC=$DIR/grib2/include
#export OMP_NUM_THREADS=5 # 4core + 1
export MP_STACK_SIZE=64000000
export WRFIO_NCD_LARGE_FILE_SUPPORT=1
export OMP_NUM_THREADS=32

export WRF_PATH=$BASE_DIR/WRFV3/WRF_34/WRFV3
export WPS_PATH=$BASE_DIR/WPS

export PATH=$WRF_PATH:$WPS_PATH:$DIR/netcdf/$NETCDF_VERS/bin:$MPI_ROOT/bin:$DIR/grib2/bin:$DIR/$WRF_VERS:$PATH:$HOME/bin
export LD_LIBRARY_PATH=$MPI_ROOT/lib:$DIR/grib2/lib:$DIR/netcdf/$NETCDF_VERS/lib:$DIR/HDF5/$HDF5_VERS/lib:/usr/lib:/usr/local/lib

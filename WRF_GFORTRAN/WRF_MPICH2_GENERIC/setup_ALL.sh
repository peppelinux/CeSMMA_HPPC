#!/bin/bash

cp WRF-3.6.environment_module /usr/share/modules/modulefiles/WRF-3.6
module load WRF-3.6

bash setup_mpich.sh
bash setup_netcdf.sh
bash setup_hdf5.sh
bash setup_graphic_libs.sh
bash setup_WRF.sh


#Setup instructions for NOAA RDHPC Hera using Intel-18.0.5.274 (bash shell)

module purge

module use /scratch1/NCEPDEV/nems/emc.nemspara/soft/modulefiles
module load miniconda3/3.7.3

module use /contrib/sutils/modulefiles
module load sutils

module load cmake/3.20.1

module use /scratch2/NCEPDEV/nwprod/hpc-stack/libs/hpc-stack/modulefiles/stack

module load hpc/1.1.0

module load hpc-intel/18.0.5.274
module load hpc-impi/2018.0.4

module load jasper/2.0.22
module load zlib/1.2.11
module load png/1.6.35

module load hdf5/1.10.6
module load netcdf/4.7.4
module load pio/2.5.2
module load esmf/8_1_1
module load fms/2020.04.03

module load bacio/2.4.1
module load crtm/2.3.0
module load g2/3.4.2
module load g2tmpl/1.10.0
module load ip/3.3.3
module load nemsio/2.5.2
module load sp/2.3.3
module load w3emc/2.7.3
module load w3nco/2.4.1
module load upp/10.0.8

module load gftl-shared/v1.3.0
module load yafyaml/v0.5.1
module load mapl/v2.7.3

module load sfcio/1.4.1
module load wgrib2/2.0.8

setenv CC mpiicc
setenv CXX mpiicpc
setenv FC mpiifort
setenv CMAKE_Platform hera.intel

# use shared memory and OpenFabrics Alliance (OFA) fabric with Intel MPI to circumvent RDMA-related bug in DAPL.
setenv I_MPI_FABRICS shm:ofa

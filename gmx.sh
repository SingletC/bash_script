#!/bin/bash
module load module load gnu-openmpi/8.2.1-4.0.0

module load gromacs
module load cuda
/usr/bin/nvidia-smi -L
 /gpfs/home/ct17b/gromacs/bin/gmx_mpi  mdrun  -deffnm $2 -cpi  

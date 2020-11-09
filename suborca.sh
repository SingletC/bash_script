#!/bin/bash
module purge
module load orca
export GAUSS_SCRDIR=/gpfs/research/scratch/ct17b

/gpfs/research/software/orca/orca_4_1_2_linux_x86-64_openmpi215/orca $1

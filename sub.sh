#!/bin/bash
module load gaussian09
export GAUSS_SCRDIR=/gpfs/research/scratch/ct17b

g09 $1
file=$1
formchk ${file/gjf/chk}

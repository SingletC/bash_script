#!/bin/bash

#SBATCH -N 1
#SBATCH -n 8
#SBATCH --gres=gpu:1
#SBATCH -p backfill2
#SBATCH -t 04:00:00

module load gnu-openmpi
module load gromacs
module load cuda

/usr/bin/nvidia-smi -L 

srun gmx mdrun -deffnm min -nb gpu

#!/bin/bash
for file in ./*.gjf
do
    echo $file 
done
for file in ./*.gjf
do
    echo $file
    sbatch -c 16 -N 1  -J $file -p  $1  --mem=16000MB sub.sh $file

done
#backfil

#!/bin/bash
for file in ./*.inp
do
    echo $file 
done
for file in ./*.inp
do
    echo $file
    sbatch -c 16 -N 1  -J $file -p  $1  --mem=16000MB suborca.sh $file

done
#backfil

#!/bin/bash
for file in ./mw-npt-*.trr
do
    echo $file
    gmx msd -f $file  -s  ${file/trr/tpr}   -o rdf${file/trr/xvg}
done
#backfil

#!/bin/bash
for file in ./mw-npt-*.trr
do
    echo $file
    gmx rdf -f $file  -s  ${file/trr/tpr} -seltype mol_com -bin 0.01 -ref "resname PNA" -sel "com of resname PNA" -o ${file/trr/xvg}
done
#backfil

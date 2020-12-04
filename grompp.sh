#!/bin/bash
module load gnu-openmpi/8.2.1-4.0.0
if [ ! -n "$1" ] ;then
	echo "sample [old file] [new name] [#process] [queue] [repeat times]" 
else

	for file in ./*.top
	do
		para="-f $2.mdp -c $1.gro -p $file -o $2.tpr -maxwarn 10"

		if [ -f "$2.cpt" ]; then
			para="$para -t $2.cpt"
		fi
		if [ -f "posres.gro" ]; then
                        para="$para -r posres.gro"
		else
		echo no pseres.gro
		fi

	done
#gmx grompp $para
../gromacs/bin/gmx_mpi grompp $para
read -p "please check no err in tpr process"
#job=`./sub.sh  $3 $2 $4`
#job=${job##*job}
for((i=1;i<=$5;i++));  
do
	job=`./sub.sh $3 $2 $4 $job`
	job=${job##*job}
	echo $job
done 


fi
#backfil

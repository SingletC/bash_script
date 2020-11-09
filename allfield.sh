#!/bin/bash
echo" usage "allfield.sh ./task.gjf >>>>>> task_x+1.gjf...."
for i in {X+1,X-1,Y+1,Y-1,Z+1,Z-1}
do
	sed  "s/replace/$i/" $1 > ${1%.gjf}_$i.gjf
done

#!/bin/bash
rm posres.gro
cat min.gro | while read line
do
	echo ${line}
	str=${line:0:19}"   10.887   0.873   3.259"
	echo ${str}
done

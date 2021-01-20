#!/bin/bash -x

declare -A keyword
 
for (( i=0; i<5; i++ ))
do
    read k
	keyword["$k"]=`date +%d%m%Y%T`
done
echo ${keyword[@]}

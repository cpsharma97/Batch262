#!/bin/bash -x
declare -a Fruits
Fruits[0]="orange"
Fruits[1]="Apple"
Fruits[2]="banana"

for i in ${Fruits[@]}
do 
    echo $i
done

echo ${#Fruits[@]}


unset Fruits[2]
echo ${Fruits[@]}

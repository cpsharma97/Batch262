#!/bin/bash -x
declare -A Sounds
Sounds[dog]="bark"
Sounds[cow]="moo"
Sounds[bird]="tweet"
Sounds[wolf]="howl"
echo ${Sounds[@]}

echo "dog Sounds" ${Sounds[dog]}

echo "Animals" ${!Sounds[@]}

echo "length of dictinoary" ${#Sounds[@]}

for i in ${!Sounds[@]}
do
  echo $i ${Soounds[$i]}
done

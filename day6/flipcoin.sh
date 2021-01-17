#!/bin/bash -x
read -p "Enter the number of times to flip coin : " totalTimes
isHeads=0;
isTails=1;
numberOfHeads=0;
numberOfTails=0;
count=$totalTimes
while (( $count>0 ))
do
	randomCheck=$(( RANDOM%2 ))
	if [[ $randomCheck -eq $isHeads ]]
	then
		((mnumberOfHeads++))
	else
		((numberOfTails++))
	fi
	((count--))
done

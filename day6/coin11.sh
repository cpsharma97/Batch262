#!/bin/bash

isHeads=0;
isTails=1;
numberOfHeads=0;
numberOfTails=0;

while [[ $numberOfHeads -lt 11 && $numberOfTails -lt 11 ]]
do
	randomCheck=$(( RANDOM%2 ))
	if [[ $randomCheck -eq $isHeads ]]
	then
		numberOfHeads=$(( $numberOfHeads + 1 ))
		echo "Head"
	else
		numberOfTails=$(( $numberOfTails + 1 ))
		echo "Tail"
	fi
	echo "$numberOfHeads"
	echo "$numberOfTails"
done



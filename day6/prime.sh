#!/bin/bash -x

read number

if [ $number -gt 1 ]
then
	for(( count=2; count<=number/2; count++))
	do
  		if [ $(($number%count)) -eq 0 ]
  		then
    		echo "$number is not a prime number."
    		exit
  		fi
	done
		echo "$number is a prime number."
else
	echo "Not acceptable"
fi

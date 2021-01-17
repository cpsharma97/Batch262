#!/bin/bash -x

read min
read max

for (( j=$min; j<=$max; j++ ))
do
		p=0;
		maxhalf=$(( j/2 ))
		for (( i=2; i<=$maxhalf; i++ ))
        	do
  		if [ $(($j%i)) -eq 0 ]
  		then
			p=1;
    			echo "$j is not a prime number."
			break
		fi
		done
		if [[ p -eq 0 ]]
		then
			echo "$j is a prime number."
		fi
done

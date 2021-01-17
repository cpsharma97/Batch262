#!/bin/bash -x
read number
while [ $number -ne 256 ]
do
    powervalue= $(((2**number)))
    number=$(( number+1))
done

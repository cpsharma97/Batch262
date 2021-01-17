#!/bin/bash -x
read number

for ((count=1; count<=$number; count++))
do
   power= $(((2**count)))
done

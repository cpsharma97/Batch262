#!/bin/bash -x
read number
harmonicnumber =0;

for (( count=1; count<=$number; count++ ))
do
   var=$(echo 1 $count | awk '{ printf "%f", $1 / $2 }')
     harmonicnumber=$( echo $harmonicnumber $var | awk '{ printf  "%f",$1 + $2 } ')
done

echo $harmonicnumber

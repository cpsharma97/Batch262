#!/bin/bash -x
read n1
#read n2
temp1=$n1;
#temp2=$n2;
sum1=0;
#sum2=0;
reverse1=0;
#reverse2=0;
while [[ $n1 -gt 0 ]]
do
reverse1=$(( $n1 % 10 ))
sum1=$(( (( $sum1 * 10 )) + $reverse1 ))
n1=$(( $n1 / 10 ))
#reverse2=$(( $n2 % 10 ))
#sum2=$(( (( $sum2 * 10 )) + $reverse2 ))
#n2=$(( $n2/10 ))
done
if [[ $temp1 -eq $sum1 ]]
then
		echo "Palindrome"
else
		echo "Not Palindrome"
fi

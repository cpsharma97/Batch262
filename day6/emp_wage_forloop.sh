#!/bin/bash -x
isParTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=20;
numWorkingDay=20;
for (( day=1; day<=$numWorkingDay; day++ ))
do
	empCheck=$(( RANDOM%3 ));
		case $empCheck in
			$isFullTime)
				empHr=8
				;;
			$isPartTime)
				empHr=4
				;;
			*)
				empHr=0;
				;;
		esac
		salary=$(( $empHr*$empRatePerHr ));
		totalSalary=$(( $totalSalary+$salary ));
done

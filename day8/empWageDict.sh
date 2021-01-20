#!/bin/bash -x

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHr=0;
totalWorkingDays=0;

declare -A dailyWages
function getWorkingHrs() {
			case $1 in
					$IS_FULL_TIME)
							empHrs=8
					;;
					$IS_PART_TIME)
							empHrs=4
					;;
					*)
							empHrs=0
							;;
			esac
			echo $empHrs;
}

function getEmpWage() {
			echo $(($1*$EMP_RATE_PER_HR))
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays  -lt $NUM_WORKING_DAYS ]]
do
			((totalWorkingDays++))
			empCheck=$((RANDOM%3));
			empHrs="$(getWorkingHrs $empCheck)"
			totalEmpHrs=$(($totalEmpHrs+$empHrs))
			dailyWages["day"$totalWorkingDays]=$(($empHrs*$EMP_RATE_PER_HR))
done

totalSalary="$( getEmpWage $totalEmpHrs )"

echo ${dailyWages[@]}

echo ${!dailyWages[@]}

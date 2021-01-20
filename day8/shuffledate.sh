#!/bin/bash
declare -A dateofbirth

for (( count=1; count<=50; count++ ))
do
	date=`shuf -n1 -i$(date -d '1992-01-01' '+%s')-$(date -d '1993-12-31' '+%s')\
	      | xargs -I{} date -d '@{}' '+%d/%m/%Y'`
	dateofbirth["$count"]=$date
done

printf '%s\n' "${dateofbirth[@]}"


declare -A hash
max_times=0
for i in "${dateofbirth[@]}"; do
  ((hash[$i]++))
  h=${hash[$i]}
  if [[ $h > $max_times ]]; then
    max=$i
    max_times=$h
  fi
done

echo max=$max, max_times=$max_times

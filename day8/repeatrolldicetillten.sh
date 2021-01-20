#!/bin/bash

declare -A face_value

isRoll=0;
FACE_ONE=1;
FACE_TWO=2;
FACE_THREE=3;
FACE_FOUR=4;
FACE_FIVE=5;
FACE_SIX=6;
i=0;
j=0;
k=0;
l=0;
m=0;
n=0;
count=0;

while [[ $isRoll -lt 9 ]]
do
	roll=$(( RANDOM%6 +1 ))
	case $roll in
		$FACE_ONE)
				face="One"
				i=$(($i+1))
				if [[ $i -lt 10 ]]
				then
					echo "Not reached"
				else
					echo "$face reached 10 times"
            			        echo "one $i"
					isRoll=10;
				fi
				;;
                $FACE_TWO)
                                face="Two"
				j=$(($j+1))
				if [[ $j -lt 10 ]]
                                then
					echo "Not Reached"
				else
                                        echo "$face reached 10 times"
                                        echo "two $j"
					isRoll=10;
                                fi
                                ;;
                $FACE_THREE)
                                face="Three"
				k=$(($k+1))
				if [[ $k -lt 10 ]]
                                then
					echo "Not reached"
				else
                                        echo "$face reached 10 times"
                                        echo "three $k"
					isRoll=10;
                                fi
                                ;;
                $FACE_FOUR)
                                face="Four"
				l=$(($l+1))
                                if [[ $l -lt 10 ]]
                                then
					echo "Not Reached"
				else
                                        echo "$face reached 10 times"
                                        echo "four $l"
					isRoll=10;
                                fi
                                ;;
                $FACE_FIVE)
                                face="Five"
				m=$(($m+1))
                                if [[ $m -lt 10 ]]
                                then
					echo "Not reached"
				else
                                        echo "$face reached 10 times"
                                        echo "five $m"
					isRoll=10;
                                fi
                                ;;
                $FACE_SIX)
                                face="Six"
				n=$(($n+1))
                                if [[ $n -lt 10 ]]
                                then
					echo "Not reached"
				else
                                        echo "$face reached 10 times"
                                        echo "six $n"
					isRoll=10;
                                fi
                                ;;

			*)	face="Unpredictable Situation Happen"
				;;
	esac
	count=$(( count+1 ))
	face_value["$count"]=$face
done

echo ${face_value[@]}
declare -A hash
max_times=0
for i in "${face_value[@]}"; do
  ((hash[$i]++))
  h=${hash[$i]}
  if [[ $h > $max_times ]]; then
    max=$i
    max_times=$h
  fi
done
echo max=$max, max_times=$max_times
declare -A minimum
min_times=0
for c in "${face_value[@]}"; do
  ((minimum[$c]++))
  h=${minimum[$c]}
  if [[ $d < $min_times ]]; then
    min=$c
    min_times=$d
  fi
done

echo min=$min, min_times=$min_times

get_result(){
awk '
  { 
      n=++hsh[$1]
      if(n>max_occ){
         max_occ=n
         what=$1
      }else if(n==max_occ){
         if(what>$1) 
             what=$1
      }
  } 
  END { print what }
'
}

result=$(printf "%s\n" "${face_value[@]}" |  get_result)
echo $result

result=$(printf "%s\n" "${face_value[@]}" |  get_result)
echo $result

#!/bin/bash -x
read -p "Enter three numbers :" a b c
declare -A computeDict

computeDict["a+b*c"]=`awk "BEGIN{ print $a+$b*$c }"`
computeDict["a*b+c"]=`awk "BEGIN{ print $a*$b+$c }"`
computeDict["c+a/b"]=`awk "BEGIN{ print $c+$a/$b }"`
computeDict["a%b+c"]=`awk "BEGIN{ print $a%$b+$c }"`
echo "Computation Dictionary :" ${computeDict[@]}

for (( i=1; i<=4; i++ ))
do
	computeArray[$i]=${computeDict[$i]}
done
echo "Computation Array :" ${computeArray[@]}
for (( i=1; i<=4; i++ ))
do
	for (( j=$(($i+1)); j<=4; j++ ))
	do
                if (( $(awk 'BEGIN {print ('${computeArray[$i]}' > '${computeArray[$j]}')}') ))
		then
			temp=${computeArray[$i]}
			computeArray[$i]=${computeArray[$j]}
			computeArray[$j]=$temp
		fi
	done
done
echo "Result in Descending order :" ${computeArray[@]}

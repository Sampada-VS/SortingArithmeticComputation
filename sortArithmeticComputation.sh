#!/bin/bash -x
read -p "Enter three numbers :" a b c
declare -A computeDict
computeDict[1]=`awk "BEGIN{ print $a+$b*$c }"`
computeDict[2]=`awk "BEGIN{ print $a*$b+$c }"`
computeDict[3]=`awk "BEGIN{ print $c+$a/$b }"`
computeDict[4]=`awk "BEGIN{ print $a%$b+$c }"`
echo "Computation Dictionary :" ${computeDict[@]}

for (( i=1; i<=4; i++ ))
do
        computeArray[$i]=${computeDict[$i]}
done
echo "Computation Array :" ${computeArray[@]}

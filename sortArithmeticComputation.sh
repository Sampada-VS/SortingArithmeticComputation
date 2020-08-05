#!/bin/bash -x
read -p "Enter three numbers :" a b c
declare -A computeDict

computeDict["a+b*c"]=`awk "BEGIN{ print $a+$b*$c }"`
computeDict["a*b+c"]=`awk "BEGIN{ print $a*$b+$c }"`
computeDict["c+a/b"]=`awk "BEGIN{ print $c+$a/$b }"`
computeDict["a%b+c"]=`awk "BEGIN{ print $a%$b+$c }"`

echo ${!computeDict[@]}
echo ${computeDict[@]}

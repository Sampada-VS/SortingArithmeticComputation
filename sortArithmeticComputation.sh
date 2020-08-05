#!/bin/bash -x
read -p "Enter three numbers :" a b c
compute1=`awk "BEGIN{ print $a+$b*$c }"`
compute2=`awk "BEGIN{ print $a*$b+$c }"`
compute3=`awk "BEGIN{ print $c+$a/$b }"`
compute4=`awk "BEGIN{ print $a%$b+$c }"`

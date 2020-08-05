#!/bin/bash -x
read -p "Enter three numbers :" a b c
compute2=`awk "BEGIN{ print $a*$b+$c }"`

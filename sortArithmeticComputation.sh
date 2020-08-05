#!/bin/bash -x
read -p "Enter three numbers :" a b c
compute1=`awk "BEGIN{ print $a+$b*$c }"`

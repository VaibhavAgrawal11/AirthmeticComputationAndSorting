#!/bin/bash -x
printf "Added 2nd airthmetic expression in program"
printf "Enter three inputs: \n"
read number1
read number2
read number3
result1=`echo "scale=3; $number1+$number2*$number3" | bc -l`
result2=`echo "scale=3; $number1*$number2+$number3" | bc -l`

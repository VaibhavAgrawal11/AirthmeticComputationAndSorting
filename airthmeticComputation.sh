#!/bin/bash -x
printf "Added 3rd airthmetic expression in program\n"
printf "Enter three inputs: \n"
read number1
read number2
read number3
result1=`echo "scale=3; $number1+$number2*$number3" | bc -l`
result2=`echo "scale=3; $number1*$number2+$number3" | bc -l`
result3=`echo "scale=3; $number3+$number1/$number2" | bc -l`

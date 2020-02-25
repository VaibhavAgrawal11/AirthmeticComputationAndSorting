#!/bin/bash -x
printf "Added feature to sort array in ascending order\n"
declare -A resultDictionary
#READING INPUTS FROM USER
printf "Enter three inputs: \n"
read number1
read number2
read number3
#CALCULATING AIRTHMETIC OPERATIONS
result1=`echo "scale=3; $number1+$number2*$number3" | bc -l`
result2=`echo "scale=3; $number1*$number2+$number3" | bc -l`
result3=`echo "scale=3; $number3+$number1/$number2" | bc -l`
result4=`echo "scale=3; $number1%$number2+$number3" | bc -l`
resultDictionary[1]="$result1"
resultDictionary[2]="$result2"
resultDictionary[3]="$result3"
resultDictionary[4]="$result4"
#TAKING VALUES OF DICTIONARY IN ARRAY
for value in ${!resultDictionary[@]}
do
	resultArray[$value]="${resultDictionary[$value]}"
done
echo "${resultArray[@]}"

#SORTING ARRAY IN DESCENDING ORDER
for value1 in ${!resultArray[@]}
do
	for value2 in ${!resultArray[@]}
	do
		if((`echo "${resultArray[$value1]}>${resultArray[$value2]}" | bc -q`==1))
		then
			temp="${resultArray[$value1]}"
			resultArray[$value1]="${resultArray[$value2]}"
			resultArray[$value2]=$temp
		fi
	done
done
echo "${resultArray[@]}"

#SORTING ARRAY IN ASCENDING ORDER
for value1 in ${!resultArray[@]}
do
   for value2 in ${!resultArray[@]}
   do
      if((`echo "${resultArray[$value1]}<${resultArray[$value2]}" | bc -q`==1))
      then
         temp="${resultArray[$value1]}"
         resultArray[$value1]="${resultArray[$value2]}"
         resultArray[$value2]=$temp
      fi
   done
done
echo "${resultArray[@]}"


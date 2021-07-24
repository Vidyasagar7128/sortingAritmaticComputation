#!/bin/bash
read -p "Value for A : " a
read -p "Value for B : " b
read -p "Value for C : " c

echo "A : "$a "B : "$b "C : "$c

result1=$(( $a+$b*$c ))
echo "Compute $a+$b*$c :" $result1

result2=$(( $a*$b+$c ))
echo "Compute $a*$b+$c :" $result2

result3=$(( $c+$a/$b ))
echo "Compute $c+$a/$b :" $result3

result4=$(( $a%$b+$c ))
echo "Compute $a%$b+$c :" $result4

declare -A result
result[((0))]=$result1
result[((1))]=$result2
result[((2))]=$result3
result[((3))]=$result4

echo "Dictionary :" ${result[@]}

counter=0

for i in "${result[@]}"
do
        arr[((counter++))]=$i
done
echo "Array :"${arr[@]}


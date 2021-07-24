#!/bin/bash
read -p "Value for A : " a
read -p "Value for B : " b
read -p "Value for C : " c

echo "A : "$a "B : "$b "C : "$c

result1=$(( $a+$b*$c ))
echo $result1

result2=$(( $a*$b+$c ))
echo $result2

result3=$(( $c+$a/$b ))
echo $result3

result4=$(( $a%$b+$c ))
echo $result4

declare -A results
result[((0))]=$result1
result[((1))]=$result2
result[((2))]=$result3
result[((3))]=$result4

echo ${result[@]}

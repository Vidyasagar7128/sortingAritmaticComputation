#!/bin/bash
read -p "Value for A : " a
read -p "Value for B : " b
read -p "Value for C : " c

echo "A : "$a "B : "$b "C : "$c

result1=$(( $a+$b*$c ))
echo $result1

result2=$(( $a*$b+$c ))
echo $result2

#! /bin/bash
read -p "enter 1st num : " n1
read -p "enter 2nd num : " n2
while (( $n1 + $n2 )); do
sum=$(( n1 + n2 ))
echo " the sum of two numbers is $sum"
break
done

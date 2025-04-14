#! /bin/bash
read -p "enter the number: " number
if [ $(( number % 2 )) -eq 0 ]; then
    echo "The provided number is a even number"
else
    echo "the provided number is NOT an even number"
fi
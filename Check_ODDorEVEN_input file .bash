## Bash Script for check if a number input from standard input is odd or even ##
## Author: Zubin Patil
## Created on: 14-04-2025
## Description: The script is built as part of my personal learning and practice bash scripting.
#! /bin/bash
read -p "enter the number: " number
if [ $(( number % 2 )) -eq 0 ]; then
    echo "The provided number is a even number"
else
    echo "the provided number is NOT an even number"
fi

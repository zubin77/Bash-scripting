#! /bin/bash
# Bash Script for check if a number input from standard input is odd or even ##
# Author: Zubin Patil
# Created on: 29-04-2025
# check if file exists in the home directory of current user
if [ -e ~/netflix.txt ]; then
        echo "The file exists"
fi
# check if the current user has execute permissions on the file
if [ -x ~/netflix.txt ]; then
        echo "User has execute permissions on netflix.txt"
else
        echo " User does not have execute permissions on file"
fi
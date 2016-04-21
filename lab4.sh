#!/bin/bash

echo "Please enter an integer"

read NUM
#deal with floating point numbers
NUM=$(echo ${NUM} | awk 'BEGIN { FS="." } { print$1 }')

#if input is invalid then output error message
if ! [[ "${NUM}" =~ ^[[:digit:]]*$ ]];then
	echo "Invalid input, please try again"
	exit
fi
NUM=$((10#${NUM}))

if [[ "${NUM}" -ge 50 ]] && [[ "${NUM}" -le 100 ]];then
	echo "Your number was between 50 and 100"
else
	echo "Your number was not in the desired range"
fi


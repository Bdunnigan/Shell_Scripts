#!/bin/bash

echo "Please enter a number"
read NUM

if [[ "${NUM}" =~ [[:digit:]] ]]; then
	if [[ $((${NUM}%2)) = 0 ]]; then
		echo "The number you entered is even"
	else
		echo "The number you entered is odd"
	fi
else
	echo "The input was invalid, please enter a number"
fi



















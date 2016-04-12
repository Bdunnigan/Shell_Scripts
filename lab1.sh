#!/bin/bash

echo "Please enter a number: "
read NUM

if [[ ("${NUM}" =~ [[:digit:]]) ]]; then
	if [[ "${NUM}" -gt 5 ]] ; then
		echo "The number you entered is greater than 5"

	elif [[ "${NUM}" -le 5 ]] ; then
		echo "the number you entered is not greater than 5"
	else
		echo "you did not enter a number"
	fi
else
	echo "input is invalid, please enter a numeric value"
fi









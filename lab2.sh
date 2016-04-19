#!/bin/bash

echo "Please enter a number"
read NUM

#if hex value (0x43) is entered, split useing x/X and return second field
NUM=$(echo "${NUM}" | awk 'BEGIN { FS = "[x,X]" } ; { print $2 }')


#State base 10 to deal with leading zeroes
STRIPPEDNUM=$(( 10#${NUM} ))

#if floating point value was entered, strip everything after the decimal point
STRIPPEDNUM=$(echo "${STRIPPEDNUM}" | awk 'BEGIN { FS = "." } ; { print $1 }')

#Test if its even or not
if [[ "${STRIPPEDNUM}" =~ ^[[:digit:]]+$ ]]; then
	if [[ $((${STRIPPEDNUM}%2)) = 0 ]]; then
		echo "The number you entered is even"
	else
		echo "The number you entered is odd"
	fi
else
	echo "The input was invalid, please enter a numeric value"
fi



















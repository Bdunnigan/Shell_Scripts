#!/bin/bash

OLDIFS="${IFS}"
IFS=$'\n'
FILE_LIST=$(cat /root/medialab/medialist.txt)
SEARCH_LIST=$(ls /root/medialab/)
testing=0

for item in ${FILE_LIST}; do
	if [[ $(grep "${item}" "${SEARCH_LIST}") == "0" ]]; then
		
	fi
done

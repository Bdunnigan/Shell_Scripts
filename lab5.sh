#!/bin/bash


FILE_LIST="/root/medialab/medialist.txt"




while read line; do
	if [[ -e /root/medialab/${line} ]]; then
		echo "${line}" >> /root/foundfiles.txt
	else
		echo "${line}" >> /root/lostfiles.txt
	fi
done < ${FILE_LIST}

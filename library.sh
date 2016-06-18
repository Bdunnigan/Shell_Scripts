#!/bin/bash

#usage, getmetadata $1=file 
getmetadata() {
	file=$1
	GREP_FILE=$(mktemp)
	exiftool ${file} > ${GREP_FILE}
	CAMERA_MODEL=$(cat $GREP_FILE | grep "Camera Model Name")
	CREATE_DATE=$(cat $GREP_FILE | grep "Create Date")
	FALL_BACK=$(cat $GREP_FILE |  grep "File Modification")
	CAMERA_MAKE=$(cat $GREP_FILE | grep "Make")
	CAMERA_MODEL=${CAMERA_MODEL#*:}
	CAMERA_MAKE=${CAMERA_MAKE#*:}
	CREATE_DATE=${CREATE_DATE#*:}
	FALL_BACK=${FALL_BACK#*:}
	echo "${CREATE_DATE}=${CAMERA_MAKE}=${CAMERA_MODEL}=${FALL_BACK}"
}




#sort metadata into relevant categories, $1=path/directory/
sortmetadata() {
	target=$1
	YEARS=$(mktemp)
	MONTHS=$(mktemp)
	DAYS=$(mktemp)
	FILE_LIST=$(ls ${target})
	for FILE in ${FILE_LIST[*]}; do
		declare -A ${FILE}
		DATA=$(getmetadata ${target}${FILE})
		DATE=${DATA%%=*}
		DATA=${DATA#*=}
		MAKE=${DATA%%=*}
		DATA=${DATA#*=}
		MODEL=${DATA%%=*}
		DATA=${DATA#*=}
		FALL_BACK=${DATA%%=*}
		echo $DATE
		echo $MAKE
		echo $MODEL
		echo $FALL_BACK
	done;
}

sortmetadata /root/finalfiles/



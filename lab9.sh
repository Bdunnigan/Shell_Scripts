#!/bin/bash

while getopts :dvhn:l: opt ;do
	case $opt in
		d) set -x;;
		v) VERBOSE=True;;
		h) echo ${0}
		   echo "usage: lab9 [OPTION]...
does random things for grants entertainment
	-d		Enables debugging mode
	-v		Sets VERBOSE to true
	-h		Print out this help message
	-n <name>	Takes your name as an arg and outputs it to the screen
	-l <dir>	Lists the directory";;

		n) NAME="$OPTARG"
		   echo "${NAME}";;
		l) DIR="$OPTARG"
		   echo "Would you like to list the contents of ${DIR}:(yes/no)"
		   read ANSWER
		   if [[ $ANSWER = "yes" ]]; then
			ls "${DIR}"
		   fi;;
		\?) echo "Unknown argument"
		    echo "usage: lab9 [OPTION]...
does random things for grants entertainment
        -d              Enables debugging mode
        -v              Sets VERBOSE to true
        -h              Print out this help message
        -n <name>       Takes your name as an arg and outputs it to the screen
        -l <dir>        Lists the directory"
		    exit;;
		
	esac
done
shift $(($OPTIND-1))

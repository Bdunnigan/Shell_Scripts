#!/bin/bash

ERROR_MESSAGE="This script requires an argument"
VAR=${1:?$ERROR_MESSAGE}

SLASH="/"
VAR=${VAR##*/}
echo ${VAR:-$SLASH}

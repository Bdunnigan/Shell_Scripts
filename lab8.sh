#!/bin/bash

ADDRESSES=$(tail -n1 /root/git_repos/Shell_Scripts/addresses.csv)


WEBURL="${ADDRESSES##*","}"; ADDRESSES=${ADDRESSES%","*}
EMAIL="${ADDRESSES##*","}"; ADDRESSES=${ADDRESSES%","*}
WPHONE="${ADDRESSES##*","}"; ADDRESSES=${ADDRESSES%","*}
HPHONE="${ADDRESSES##*","}"; ADDRESSES=${ADDRESSES%","*}
ZIP="${ADDRESSES##*","}"; ADDRESSES=${ADDRESSES%","*}
STATE="${ADDRESSES##*","}"; ADDRESSES=${ADDRESSES%","*}
COUNTY="${ADDRESSES##*","}"; ADDRESSES=${ADDRESSES%","*}
CITY="${ADDRESSES##*","}"; ADDRESSES=${ADDRESSES%","*}
STREET="${ADDRESSES##*","}"; ADDRESSES=${ADDRESSES%","*}
COMPANY="${ADDRESSES##*","}"; ADDRESSES=${ADDRESSES%","*}
LNAME="${ADDRESSES##*","}";  ADDRESSES=${ADDRESSES%","*}
FNAME="${ADDRESSES##*","}"; ADDRESSES=${ADDRESSES%","*}

echo "FIRST NAME ${FNAME}"
echo "LAST NAME ${LNAME}"
echo "COMPANY ${COMPANY}"
echo "STREET ${STREET}"
echo "CITY ${CITY}"
echo "STATE ${STATE}"
echo "ZIPCODE ${ZIP}"
echo "HOMEPHONE ${HPHONE}"
echo "WORKPHONE ${WPHONE}"
echo "EMAIL ${EMAIL}"
echo "WEBURL ${WEBURL}"

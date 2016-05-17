#!/bin/bash
FIRSTARG=$("{1:-"${exit}"}")
SECONDARG=${2:-10}

echo ${FIRSTARG}
echo ${SECONDARG}

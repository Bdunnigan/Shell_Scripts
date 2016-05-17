#!/bin/bash

trap  "echo The cake was a lie" SIGINT

test()
{
	local FIRSTVAR="$1"
	echo "\$1 is $1"
}

test five
echo "\$1 is $1"





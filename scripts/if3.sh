#!/bin/bash
if [ $# -eq 2 ]
then

if [ $1 -gt $2 ]
then
	echo "$1"
else
	echo "$2"
fi
else 
	echo "invalid arg"
fi

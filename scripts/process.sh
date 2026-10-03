#!/bin/bash

echo " Enter the process name"
read process

pid=$( pgrep -x "$process" )

if [ $? -eq 0 ]
then
	echo " Running"
	echo " pid: $pid"
else
	echo "Not running"
fi

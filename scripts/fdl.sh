#!/bin/bash
echo "enter the valid fiile/dir/link name"
read var

if [ -f $var ]
then
	echo "file"
elif [ -d $var ]
then
	echo "dir"
elif [ -L $var ]
then
	echo "link"
else
	echo "not exist"
fi


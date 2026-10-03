#!/bin/bash
 var=$1

while [ $var -gt  0 ]
do
var=`expr $var - 1`
echo " $var"
done


#!/bin/bash
num=1
while read line
do
words=`echo "$num.$line"| wc -c`
echo "$num $words"
num=`expr $num + 1`
done < file1


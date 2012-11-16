#!/bin/sh
#while test
# to test the method of whil

COUNT=0
while [$COUNTER -lt 10]
do
echo $COUNTER
counter=$(expr $COUNTER+1)
done
while read LINE
do
echo $LINE
done<names.txt

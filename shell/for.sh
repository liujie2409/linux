#!/bin/sh
#forTest
# to test the meehod of for

COUNT=0
for FILES in *
do
	COUNTER='expr $COUNTER+1'
done
echo "There are $Counter files in 'pwd'"


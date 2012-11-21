#!/bin/sh
a='date+%H'
if [ $a -lt 12 ]
	then
	echo "早上"
else
	echo "下午"
fi


#!/bin/sh
#10!
i=0
while [ $i -lt 10 ];
do
	echo "i=$i"
	i=`expr $i +1 `
done

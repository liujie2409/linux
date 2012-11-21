#!/bin/sh
i=1
while [ $i -le 3 ] 
do

	useradd user$i
	echo "you add a user $i"
        i='expr $i+1'

done


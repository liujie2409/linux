#!/bin/sh
number=1
while [$number -le 10]
do
	useradd user$number
	echo "add a suer whoe name is :user$number"
	number='expr $number+1'
done


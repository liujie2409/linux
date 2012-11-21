#!/bin/sh
#test case

echo "please select a option "
echo "Add"
echo "copy"
echo "delete"
read opt

case $opt in
 A)
	echo "you selecte add"
	;;
C)	
	echo "you selected copy"
	;;
D)	
	echo "you selected D"
	;;
*)	
	echo "you can input A C D "
esac

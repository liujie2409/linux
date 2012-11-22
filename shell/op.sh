#!/bin/sh
echo "-------------------------------"
echo "please select you option"
echo "1 copy"
echo "2 delete"
echo "3 backup"

echo "4:exit"
while [ true ]
do
read op
case $op in
 C)
	echo "you are selected copy"
	;;
 d)
	echo "you are selected delete"
	;;
 b)
	echo "you are selected backup "
	;;
 0)	
	echo "you will exit system "
	exit;;

*)      echo "you not selecte"
	;;
esac 
done

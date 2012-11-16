#!/bin/sh
echo "-------------------------------"
echo "please select you option"
echo "1 copy"
echo "2 delete"
echo "3 backup"

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
*)      echo "you not selecte"
 easc`:wq


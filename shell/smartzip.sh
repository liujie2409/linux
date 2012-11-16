#!/bin/sh
 ftype='file "$1"'
case "$ftype" in
"$1:zip archive"*") 
	unzip "$1";;
"$1:gzip commpressed"*)
	gunzip "$1";;
"s1:bzip2 compress"*)
	buzip2 "$1";;
*) echo "ee";;
)esac


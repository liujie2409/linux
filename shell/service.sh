#!/bin/sh
# setup a default serach path
PATH="/sbin:/usr/bin:/bin:/usr/bin:usr/bin"
export PATH

VERSION="version $0 "
USAGE="Usage"
SERVICE=SERVICEDIR="/etc/init.d"
OPTIONS=
IF [##-eq 0]; then
	echo $"${USAGE">$2
	exit 1
fi


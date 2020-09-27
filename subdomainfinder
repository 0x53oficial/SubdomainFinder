#!/bin/bash

if [ "$1" == "" ]
then
	echo "Please, give me a domain :)"
else
	if [ "$2" == "" ]
	then
		echo "Please, give me a wordlist :)"	
	else
		for subname in $(cat $2);do host -t A $subname.$1 | grep -v "NXDOMAIN" | awk -F " " '{print $1}' ;done
	fi
fi

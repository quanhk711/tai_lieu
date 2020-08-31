#!/bin/bash
if [ "$#" = 0 ]; then
echo "sai cu phap: sh $PWD/script.sh filename"
else 
	if [ -f "$1" ]; then
		for _user in 'cat $1'; do
		useradd $_user;
		done
	else
	echo "file $1 not found"
	fi
fi

#!/bin/bash

BACKUP=$IFS
IFS=""

if [[ $# -ne 2 ]] ; then 
	echo "Correct syntax ./copiafile.sh <sourceDir> <destDir>"
elif [[ ! -d "$1" && ! -d "$2" ]] ; then
	echo 'You need to insert two directories!'
else
	for FILE in ${1}/* ; do
		if [[ -e $FILE && -s $FILE ]] ; then
			cp $FILE $2
		fi
	done
fi

IFS=$BACKUP

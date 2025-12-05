#!/bin/bash

BACKUP=$IFS
IFS=""

VAR=`ls *`

for file in $VAR ; do 
	echo $file
done

IFS=$BACKUP

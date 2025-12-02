#!/bin/bash

for FILE in ./* ; do 
	echo "File is ${FILE}"
	echo `ls -ld ${FILE}`
done

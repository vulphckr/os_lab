#!/bin/bash

REV=""

echo $1 | \
while (( 1 )) ; do
	read -N 1 CAR ;
	if [[ $? -eq 0 ]] ; then
		REV=${CAR}${REV}
	else
		echo $REV
		exit 0
	fi
done

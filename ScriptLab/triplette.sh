#!/bin/bash

NOMI=`ls`

for n1 in $NOMI ; do
	for n2 in $NOMI ; do
		for n3 in $NOMI ; do
			echo "(${n1};${n2};${n3})" ;
		done
	done
done

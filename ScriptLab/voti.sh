#!/bin/bash

CHECKED=0

if [[ ! -f esame1.txt || ! -f esame2.txt ]] ; then
	echo "I due file esami1.txt e esami2.txt non sono presenti" ;
	exit 1
fi

if [[ ! -f risultati.txt ]] ; then
	touch risultati.txt
else echo "" > risultati.txt
fi

while read MAT1 VOT1 ; do
	CHECKED=0
	if [[ $? -eq 1 && $VOT1 == '' ]] ; then
		break
	fi

	while read MAT2 VOT2 ; do
		if [[ ! $? -eq 1 && ! $VOT2 == '' && $CHECKED -ne 1 ]] ; then
			if [[ $MAT1 -eq $MAT2 ]] ; then
				echo "${MAT1} ${VOT2}" >> risultati.txt ;
				CHECKED=1
			fi
		fi
	done < esame2.txt 
	if [[ $CHECKED -ne 1 ]] ; then
		echo "${MAT1} ${VOT1}" >> risultati.txt
	fi
done < esame1.txt

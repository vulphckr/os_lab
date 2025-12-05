#!/bin/bash

BACKUP=$IFS
IFS=","

if [[ $# -ne 1 ]] ; then
	echo "Inserisci un solo argomento."
elif [[ $1 -ge 5 || $1 -le 0 ]] ; then
	echo "L'argomento deve essere compreso tra 1 e 4"
elif [[ ! -f ./dacontrollare.csv ]] ; then
	echo "Il file dacontrollare.csv non esiste"
else
	while read A B C D ; do
		if [[ $? -ne 1 && D != "" ]] ; then
			if [[ $1 -eq 1 ]] ; then
				echo $A
			elif [[ $1 -eq 2 ]] ; then
				echo $B
			elif [[ $1 -eq 3 ]] ; then
				echo $C
			else 
				echo $D
			fi
		fi
	done < dacontrollare.csv
fi

IFS=$BACKUP

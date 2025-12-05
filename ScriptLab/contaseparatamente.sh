#!/bin/bash

if [[ $# -gt 9 || $# -le 0 ]] ; then
	echo "Inserisci dagli 0 ai 9 argomenti" ;
	exit 1
fi

ARG=1
SOMMAPARI=0
SOMMADISPARI=0

for FILE in "$@" ; do
	if [[ $(( $ARG % 2 )) -eq 0 ]] ; then
		(( SOMMAPARI=SOMMAPARI + `cat $FILE | wc -l` ))
	else
		(( SOMMADISPARI=SOMMADISPARI + `cat $FILE | wc -l` ))
	fi
	(( ARG=ARG+1 ))
done

echo "Somma dei pari: $SOMMAPARI"
echo "Somma dei dispari: $SOMMADISPARI" 1>&2 

exit 0

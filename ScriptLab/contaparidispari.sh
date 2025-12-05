#!/bin/bash

SOMMAPARI=0
SOMMADISPARI=0
CURR=1

while read NUM ; do
	if [[ $(( $CURR % 2 )) -eq 0 ]] ; then
		(( SOMMAPARI=SOMMAPARI+NUM ))
	else
		(( SOMMADISPARI=SOMMADISPARI+NUM )) 
	fi
	CURR=$(( $CURR+1 )) 
done < numeri.txt 

echo "Somma pari: $SOMMAPARI"
echo "Somma dispari: $SOMMADISPARI"

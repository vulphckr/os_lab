#!/bin/bash

ARGNUM=1
STRPARI=""
STRDISP=""

for arg in "$@" ; do 
	if [[ $((${ARGNUM} % 2)) -eq 0 ]] ; then
		STRPARI=${STRPARI}" ${arg}" ;
	else
		STRDISP=${STRDISP}" ${arg}" ;
	fi 
	(( ARGNUM=${ARGNUM}+1 ))
done

echo "La stringa dei pari: ${STRPARI}"
echo "La stringa dei dispari: ${STRDISP}"


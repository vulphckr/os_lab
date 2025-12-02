#!/bin/bash

PROD=1
CURNUM=1
while [[ ${CURNUM} -le $1 ]] ; do
	(( PROD=${PROD}*${CURNUM} )) ;
	(( CURNUM=${CURNUM}+1 )) ;
done

echo ${PROD}

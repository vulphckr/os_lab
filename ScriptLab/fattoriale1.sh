#!/bin/bash

RIS=1
CURNUM=1
while [[ ${CURNUM} -le $1 ]] ; do
	(( RIS=${RIS}*${CURNUM} )) ;
	(( CURNUM=${CURNUM}+1 )) ;
done

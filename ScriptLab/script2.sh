#!/bin/bash

ARGS=$#

while (( ${ARGS} > 0 )) ; do
	echo "${ARGS} is ${!ARGS} " ;
	(( ARGS=${ARGS}-1 )) ;  
done

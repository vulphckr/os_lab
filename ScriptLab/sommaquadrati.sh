#!/bin/bash

ARGSUM=0
QUADSUM=0
ARGNUM=1

for ARG in $@ ; do
	(( QUADSUM=${QUADSUM}+(ARG*ARG) )) ;
	(( ARGSUM=${ARGSUM}+${ARGNUM} )) ;
	(( ARGNUM=${ARGNUM}+1 )) ;
done

echo $(( QUADSUM=${QUADSUM}-${ARGSUM} ))
	

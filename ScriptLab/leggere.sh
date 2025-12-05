#!/bin/bash

exec {FD}< /usr/include/stdio.h
COUNTER=0

while read -u ${FD} -N 1 -r A ; do
	(( COUNTER=${COUNTER} + 1 ))
done

echo $COUNTER
exec {FD}>&-

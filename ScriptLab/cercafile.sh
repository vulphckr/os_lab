#!/bin/bash

for FILE in /usr/include/?{c..g}* ; do
	if [[ ${#FILE} -lt 18 || ${#FILE} -gt 23 ]] ; then
		echo ${FILE}
	fi
done

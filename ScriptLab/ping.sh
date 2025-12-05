#!/bin/bash

if [[ -f ./ping.txt || -f ./pong.txt ]] ; then
	rm -f ./ping.txt ./pong.txt
fi

if [[ ! -f ./ping.txt ]] ; then
	touch ./ping.txt
fi

while (( 1 )) ; do
	sleep 2s
	while [[ ! -f ./ping.txt ]] ; do
		sleep 2s
	done
	echo $0
	rm ./ping.txt
	touch ./pong.txt
	./pong.sh &
done

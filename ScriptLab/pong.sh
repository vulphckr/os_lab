#!/bin/bash

sleep 2s
while [[ ! -f ./pong.txt ]] ; do
	sleep 2s
done

echo $0
rm ./pong.txt
touch ./ping.txt


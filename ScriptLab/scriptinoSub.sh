#!/bin/bash

mkdir ./BUTTAMI
touch ./BUTTAMI/'*' ./BUTTAMI/'**' ./BUTTAMI/'***' ./BUTTAMI/';;'
ls ./BUTTAMI/* -alh
for FILE in ./BUTTAMI/* ; do touch "${FILE}.txt" ; done
cp /usr/include ./BUTTAMI/ -r
find ./BUTTAMI -type d
rm -rf ./BUTTAMI/include

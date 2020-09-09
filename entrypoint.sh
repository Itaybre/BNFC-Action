#!/bin/bash

echo "List files"

cd /github/workspace

cd $1

ls

echo "Building $2"

bnfc -m $2
if [ "$?" -ne 0 ] ; then
  echo "Error building"
  exit 1
fi

make
if [ "$?" -ne 0 ] ; then
  echo "Error on make"
  exit 1
fi

filename=$(echo "${2%%.*}")
capitalized=$(echo "$(tr '[:lower:]' '[:upper:]' <<< ${filename:0:1})${filename:1}" )
builtfile=Test$(echo "$capitalized")

for i in 1 2 3 4 5 6
do
    ./$builtfile /pruebas/$i.cc
    if [ "$?" -ne 0 ] ; then
        echo "Error on test $i"
        exit 1
    fi
done
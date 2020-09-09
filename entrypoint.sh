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

./Test$2 /pruebas/1.cc
if [ "$?" -ne 0 ] ; then
  echo "Error on test 1"
  exit 1
fi

./Test$2 /pruebas/2.cc
if [ "$?" -ne 0 ] ; then
  echo "Error on test 2"
  exit 1
fi

./Test$2 /pruebas/3.cc
if [ "$?" -ne 0 ] ; then
  echo "Error on test 3"
  exit 1
fi

./Test$2 /pruebas/4.cc
if [ "$?" -ne 0 ] ; then
  echo "Error on test 4"
  exit 1
fi

./Test$2 /pruebas/5.cc
if [ "$?" -ne 0 ] ; then
  echo "Error on test 5"
  exit 1
fi

./Test$2 /pruebas/6.cc
if [ "$?" -ne 0 ] ; then
  echo "Error on test 6"
  exit 1
fi
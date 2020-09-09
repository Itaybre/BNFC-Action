#!/bin/bash

echo "Testing $1"

bnfc -m $1
if [ "$?" -ne 0 ] ; then
  echo "Error building"
  exit 1
fi

make
if [ "$?" -ne 0 ] ; then
  echo "Error on make"
  exit 1
fi

./Test$1 /pruebas/1.cc
if [ "$?" -ne 0 ] ; then
  echo "Error on test 1"
  exit 1
fi

./Test$1 /pruebas/2.cc
if [ "$?" -ne 0 ] ; then
  echo "Error on test 2"
  exit 1
fi

./Test$1 /pruebas/3.cc
if [ "$?" -ne 0 ] ; then
  echo "Error on test 3"
  exit 1
fi

./Test$1 /pruebas/4.cc
if [ "$?" -ne 0 ] ; then
  echo "Error on test 4"
  exit 1
fi

./Test$1 /pruebas/5.cc
if [ "$?" -ne 0 ] ; then
  echo "Error on test 5"
  exit 1
fi

./Test$1 /pruebas/6.cc
if [ "$?" -ne 0 ] ; then
  echo "Error on test 6"
  exit 1
fi
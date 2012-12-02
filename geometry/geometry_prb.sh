#!/bin/bash
#
gcc -c -g geometry_prb.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling geometry_prb.c."
  exit
fi
rm compiler.txt
#
gcc geometry_prb.o /$HOME/libc/$ARCH/geometry.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading geometry_prb.o."
  exit
fi
#
rm geometry_prb.o
#
mv a.out geometry_prb
./geometry_prb > geometry_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running geometry_prb."
  exit
fi
rm geometry_prb
#
echo "Program output written to geometry_prb_output.txt"

#!/bin/bash
#
gcc -c -g -I/$HOME/include triangulation_prb.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling triangulation_prb.c"
  exit
fi
rm compiler.txt
#
gcc triangulation_prb.o /$HOME/libc/$ARCH/triangulation.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading triangulation_prb.o."
  exit
fi
#
rm triangulation_prb.o
#
mv a.out triangulation_prb
./triangulation_prb > triangulation_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running triangulation_prb."
  exit
fi
rm triangulation_prb
#
echo "Program output written to triangulation_prb_output.txt"

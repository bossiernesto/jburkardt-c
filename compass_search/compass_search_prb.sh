#!/bin/bash
#
gcc -c -g -I/$HOME/include compass_search_prb.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling compass_search_prb.c"
  exit
fi
rm compiler.txt
#
gcc compass_search_prb.o /$HOME/libc/$ARCH/compass_search.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading compass_search_prb.o."
  exit
fi
#
rm compass_search_prb.o
#
mv a.out compass_search_prb
./compass_search_prb > compass_search_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running compass_search_prb."
  exit
fi
rm compass_search_prb
#
echo "Program output written to compass_search_prb_output.txt"

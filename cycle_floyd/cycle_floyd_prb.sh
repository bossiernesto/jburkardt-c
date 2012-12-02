#!/bin/bash
#
gcc -c -g -I/$HOME/include cycle_floyd_prb.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling cycle_floyd_prb.c"
  exit
fi
rm compiler.txt
#
gcc cycle_floyd_prb.o /$HOME/libc/$ARCH/cycle_floyd.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading cycle_floyd_prb.o"
  exit
fi
#
rm cycle_floyd_prb.o
#
mv a.out cycle_floyd_prb
./cycle_floyd_prb > cycle_floyd_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running cycle_floyd_prb."
  exit
fi
rm cycle_floyd_prb
#
echo "Program output written to cycle_floyd_prb_output.txt"

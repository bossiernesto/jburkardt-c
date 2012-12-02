#!/bin/bash
#
gcc -c -g uniform_prb.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling uniform_prb.c."
  exit
fi
rm compiler.txt
#
gcc uniform_prb.o /$HOME/libc/$ARCH/uniform.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading uniform_prb.o."
  exit
fi
#
rm uniform_prb.o
#
mv a.out uniform_prb
./uniform_prb > uniform_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running uniform_prb."
  exit
fi
rm uniform_prb
#
echo "Program output written to uniform_prb_output.txt"

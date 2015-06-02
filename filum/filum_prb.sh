#!/bin/bash
#
gcc -c filum_prb.c
if [ $? -ne 0 ]; then
  echo "Errors compiling filum_prb.c."
  exit
fi
#
gcc filum_prb.o /$HOME/libc/$ARCH/filum.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading filum_prb.o."
  exit
fi
#
rm filum_prb.o
#
mv a.out filum_prb
./filum_prb > filum_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running filum_prb."
  exit
fi
rm filum_prb
#
echo "Program output written to filum_prb_output.txt"

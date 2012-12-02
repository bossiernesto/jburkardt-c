#!/bin/bash
#
gcc -c -g asa066_prb.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling asa066_prb.c."
  exit
fi
rm compiler.txt
#
gcc asa066_prb.o /$HOME/libc/$ARCH/asa066.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading asa066_prb.o."
  exit
fi
#
rm asa066_prb.o
#
mv a.out asa066_prb
./asa066_prb > asa066_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running asa066_prb."
  exit
fi
rm asa066_prb
#
echo "Program output written to asa066_prb_output.txt"

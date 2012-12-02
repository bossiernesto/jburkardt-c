#!/bin/bash
#
gcc -c -g asa103_prb.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling asa103_prb.c."
  exit
fi
rm compiler.txt
#
gcc asa103_prb.o /$HOME/libc/$ARCH/asa103.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading asa103_prb.o."
  exit
fi
#
rm asa103_prb.o
#
mv a.out asa103_prb
./asa103_prb > asa103_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running asa103_prb."
  exit
fi
rm asa103_prb
#
echo "Program output written to asa103_prb_output.txt"

#!/bin/bash
#
gcc -c -g asa006_prb.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling asa006_prb.c."
  exit
fi
rm compiler.txt
#
gcc asa006_prb.o /$HOME/libc/$ARCH/asa006.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading asa006_prb.o."
  exit
fi
#
rm asa006_prb.o
#
mv a.out asa006_prb
./asa006_prb > asa006_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running asa006_prb."
  exit
fi
rm asa006_prb
#
echo "Program output written to asa006_prb_output.txt"

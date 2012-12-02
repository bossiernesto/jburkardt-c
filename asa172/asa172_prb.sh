#!/bin/bash
#
gcc -c -g asa172_prb.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling asa172_prb.c."
  exit
fi
rm compiler.txt
#
gcc asa172_prb.o /$HOME/libc/$ARCH/asa172.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading asa172_prb.o."
  exit
fi
#
rm asa172_prb.o
#
mv a.out asa172_prb
./asa172_prb > asa172_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running asa172_prb."
  exit
fi
rm asa172_prb
#
echo "Program output written to asa172_prb_output.txt"

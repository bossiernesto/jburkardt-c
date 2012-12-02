#!/bin/bash
#
gcc -c -g mgmres_prb.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling mgmres_prb.c."
  exit
fi
rm compiler.txt
#
gcc mgmres_prb.o /$HOME/libc/$ARCH/mgmres.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading mgmres_prb.o."
  exit
fi
#
rm mgmres_prb.o
#
mv a.out mgmres_prb
./mgmres_prb > mgmres_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running mgmres_prb."
  exit
fi
rm mgmres_prb
#
echo "Program output written to mgmres_prb_output.txt"

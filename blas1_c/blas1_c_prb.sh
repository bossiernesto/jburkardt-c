#!/bin/bash
#
gcc -c -g blas1_c_prb.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling blas1_c_prb.c."
  exit
fi
rm compiler.txt
#
gcc blas1_c_prb.o /$HOME/libc/$ARCH/blas1_c.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading blas1_c_prb.o."
  exit
fi
#
rm blas1_c_prb.o
#
mv a.out blas1_c_prb
./blas1_c_prb > blas1_c_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running blas1_c_prb."
  exit
fi
rm blas1_c_prb
#
echo "Program output written to blas1_c_prb_output.txt"

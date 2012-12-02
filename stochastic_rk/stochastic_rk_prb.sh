#!/bin/bash
#
gcc -c -g stochastic_rk_prb.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling stochastic_rk_prb.c."
  exit
fi
rm compiler.txt
#
gcc stochastic_rk_prb.o /$HOME/libc/$ARCH/stochastic_rk.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading stochastic_rk_prb.o."
  exit
fi
#
rm stochastic_rk_prb.o
#
mv a.out stochastic_rk_prb
./stochastic_rk_prb > stochastic_rk_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running stochastic_rk_prb."
  exit
fi
rm stochastic_rk_prb
#
echo "Program output written to stochastic_rk_prb_output.txt"

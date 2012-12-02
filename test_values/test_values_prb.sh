#!/bin/bash
#
gcc -c -g test_values_prb.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling test_values_prb.c."
  exit
fi
rm compiler.txt
#
gcc test_values_prb.o /$HOME/libc/$ARCH/test_values.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading test_values_prb.o."
  exit
fi
#
rm test_values_prb.o
#
mv a.out test_values_prb
./test_values_prb > test_values_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running test_values_prb."
  exit
fi
rm test_values_prb
#
echo "Program output written to test_values_prb_output.txt"

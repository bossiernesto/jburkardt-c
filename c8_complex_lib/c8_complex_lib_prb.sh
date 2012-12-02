#!/bin/bash
#
gcc -c -g c8_complex_lib_prb.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling c8_complex_lib_prb.c."
  exit
fi
rm compiler.txt
#
gcc c8_complex_lib_prb.o /$HOME/libc/$ARCH/c8_complex_lib.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading c8_complex_lib_prb.o."
  exit
fi
#
rm c8_complex_lib_prb.o
#
mv a.out c8_complex_lib_prb
./c8_complex_lib_prb > c8_complex_lib_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running c8_complex_lib_prb."
  exit
fi
rm c8_complex_lib_prb
#
echo "Program output written to c8_complex_lib_prb_output.txt"

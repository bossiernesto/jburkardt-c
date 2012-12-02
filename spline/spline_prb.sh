#!/bin/bash
#
gcc -c -g -I/$HOME/include spline_prb.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling spline_prb.c"
  exit
fi
rm compiler.txt
#
gcc spline_prb.o /$HOME/libc/$ARCH/spline.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading spline_prb.o."
  exit
fi
#
rm spline_prb.o
#
mv a.out spline_prb
./spline_prb > spline_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running spline_prb."
  exit
fi
rm spline_prb
#
echo "Program output written to spline_prb_output.txt"

#!/bin/bash
#
gcc -c -g latin_cover_prb.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling latin_cover_prb.c"
  exit
fi
rm compiler.txt
#
gcc latin_cover_prb.o /$HOME/libc/$ARCH/latin_cover.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading latin_cover_prb.o."
  exit
fi
#
rm latin_cover_prb.o
#
mv a.out latin_cover_prb
./latin_cover_prb > latin_cover_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running latin_cover_prb."
  exit
fi
rm latin_cover_prb
#
echo "Program output written to latin_cover_prb_output.txt"

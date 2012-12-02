#!/bin/bash
#
gcc -c -g image_edge_prb.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling image_edge_prb.c."
  exit
fi
rm compiler.txt
#
gcc image_edge_prb.o /$HOME/libc/$ARCH/image_edge.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading image_edge_prb.o."
  exit
fi
#
rm image_edge_prb.o
#
mv a.out image_edge_prb
./image_edge_prb > image_edge_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running image_edge_prb."
  exit
fi
rm image_edge_prb
#
echo "Program output written to image_edge_prb_output.txt"

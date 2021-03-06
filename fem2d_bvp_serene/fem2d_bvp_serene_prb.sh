#!/bin/bash
#
gcc -c fem2d_bvp_serene_prb.c
if [ $? -ne 0 ]; then
  echo "Errors compiling fem2d_bvp_serene_prb.c"
  exit
fi
#
gcc fem2d_bvp_serene_prb.o ~/libc/$ARCH/fem2d_bvp_serene.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading fem2d_bvp_serene_prb.o"
  exit
fi
rm fem2d_bvp_serene_prb.o
#
mv a.out fem2d_bvp_serene_prb
./fem2d_bvp_serene_prb > fem2d_bvp_serene_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running fem2d_bvp_serene_prb"
  exit
fi
rm fem2d_bvp_serene_prb
#
echo "Program output written to fem2d_bvp_serene_prb_output.txt"

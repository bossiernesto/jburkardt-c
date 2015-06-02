#!/bin/bash
#
gcc -c multigrid_poisson_1d_prb.c
if [ $? -ne 0 ]; then
  echo "Errors compiling multigrid_poisson_1d_prb.c."
  exit
fi
#
gcc multigrid_poisson_1d_prb.o /$HOME/libc/$ARCH/multigrid_poisson_1d.o -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading multigrid_poisson_1d_prb.o."
  exit
fi
#
rm multigrid_poisson_1d_prb.o
#
mv a.out multigrid_poisson_1d_prb
./multigrid_poisson_1d_prb > multigrid_poisson_1d_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running multigrid_poisson_1d_prb."
  exit
fi
rm multigrid_poisson_1d_prb
#
echo "Program output written to multigrid_poisson_1d_prb_output.txt"

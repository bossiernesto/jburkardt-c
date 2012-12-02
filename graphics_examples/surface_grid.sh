#!/bin/bash
#
gcc -c -I/usr/local/dislin surface_grid.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling surface_grid.c"
  exit
fi
rm compiler.txt
#
gcc surface_grid.o -L/usr/local/dislin -ldislin -L/opt/local/lib -lXm -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading surface_grid.o."
  exit
fi
#
rm surface_grid.o
#
mv a.out surface_grid
./surface_grid > surface_grid_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running surface_grid."
  exit
fi
rm surface_grid
#
echo "Program output written to surface_grid_output.txt"

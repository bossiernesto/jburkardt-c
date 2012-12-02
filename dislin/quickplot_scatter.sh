#!/bin/bash
#
gcc -c -I/usr/local/dislin quickplot_scatter.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling quickplot_scatter.c"
  exit
fi
rm compiler.txt
#
gcc quickplot_scatter.o -L/usr/local/dislin -ldislin -L/opt/local/lib -lXm -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading quickplot_scatter.o."
  exit
fi
#
rm quickplot_scatter.o
#
mv a.out quickplot_scatter
./quickplot_scatter > quickplot_scatter_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running quickplot_scatter."
  exit
fi
rm quickplot_scatter
#
echo "Program output written to quickplot_scatter_output.txt"

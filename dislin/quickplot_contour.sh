#!/bin/bash
#
gcc -c -I/usr/local/dislin quickplot_contour.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling quickplot_contour.c"
  exit
fi
rm compiler.txt
#
gcc quickplot_contour.o -L/usr/local/dislin -ldislin -L/opt/local/lib -lXm -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading quickplot_contour.o."
  exit
fi
#
rm quickplot_contour.o
#
mv a.out quickplot_contour
./quickplot_contour > quickplot_contour_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running quickplot_contour."
  exit
fi
rm quickplot_contour
#
echo "Program output written to quickplot_contour_output.txt"

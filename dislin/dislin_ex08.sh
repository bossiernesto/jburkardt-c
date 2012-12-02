#!/bin/bash
#
gcc -c -I/usr/local/dislin dislin_ex08.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling dislin_ex08.c"
  exit
fi
rm compiler.txt
#
gcc dislin_ex08.o -L/usr/local/dislin -ldislin -L/opt/local/lib -lXm -lm
if [ $? -ne 0 ]; then
  echo "Errors linking and loading dislin_ex08.o."
  exit
fi
#
rm dislin_ex08.o
#
mv a.out dislin_ex08
./dislin_ex08 > dislin_ex08_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running dislin_ex08."
  exit
fi
rm dislin_ex08
#
echo "Program output written to dislin_ex08_output.txt"

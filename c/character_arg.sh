#!/bin/bash
#
gcc -c character_arg.c
if [ $? -ne 0 ]; then
  echo "Errors compiling character_arg.c."
  exit
fi
#
gcc character_arg.o
if [ $? -ne 0 ]; then
  echo "Errors linking character_arg.o."
  exit
fi
#
rm character_arg.o
#
mv a.out character_arg
./character_arg > character_arg_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running character_arg."
  exit
fi
rm character_arg
#
echo "Program output written to character_arg_output.txt"

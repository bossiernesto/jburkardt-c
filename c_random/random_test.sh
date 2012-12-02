#!/bin/bash
#
gcc -c random_test.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling random_test.c"
  exit
fi
rm compiler.txt
#
gcc random_test.o
if [ $? -ne 0 ]; then
  echo "Errors loading random_test.o"
  exit
fi
rm random_test.o
#
mv a.out random_test
./random_test > random_test_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running random_test"
  exit
fi
rm random_test
#
echo "Program output written to random_test_output.txt"

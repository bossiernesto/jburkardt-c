#!/bin/bash
#
#  Compile the program with GCC.
#
gcc -fopenmp satisfy_openmp.c
#
#  Compile the program with ICC.
#
#icc -openmp -parallel satisfy_openmp.c
#
mv a.out satisfy
#
#  Run with 1, 2, 4 and 8 threads.
#
echo "Run with 1 thread."
export OMP_NUM_THREADS=1
./satisfy > satisfy_local_output.txt
#
echo "Run with 2 threads."
export OMP_NUM_THREADS=2
./satisfy >> satisfy_local_output.txt
#
echo "Run with 4 threads."
export OMP_NUM_THREADS=4
./satisfy >> satisfy_local_output.txt
#
echo "Run with 8 threads."
export OMP_NUM_THREADS=8
./satisfy >> satisfy_local_output.txt
#
#  Discard the executable file.
#
rm satisfy
#
echo "Program output written to satisfy_local_output.txt"

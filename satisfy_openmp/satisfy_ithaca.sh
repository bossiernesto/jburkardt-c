#!/bin/bash
#
#PBS -lwalltime=00:10:00
#PBS -lnodes=1:ppn=8
#PBS -W group_list=ithaca
#PBS -q ithaca_q
#PBS -A admn0000
#PBS -j oe
#
#  Start in the directory from which this job was submitted.
#
cd $PBS_O_WORKDIR
#
#  Compile the program with GCC.
#
#gcc -fopenmp satisfy_openmp.c
#
#  Compile the program with ICC.
#
icc -openmp -parallel satisfy_openmp.c
#
mv a.out satisfy
#
#  Run with 1, 2, 4 and 8 threads.
#
echo "Run with 1 thread."
export OMP_NUM_THREADS=1
./satisfy > satisfy_ithaca_output.txt
#
echo "Run with 2 threads."
export OMP_NUM_THREADS=2
./satisfy >> satisfy_ithaca_output.txt
#
echo "Run with 4 threads."
export OMP_NUM_THREADS=4
./satisfy >> satisfy_ithaca_output.txt
#
echo "Run with 8 threads."
export OMP_NUM_THREADS=8
./satisfy >> satisfy_ithaca_output.txt
#
#  Clean up.
#
rm satisfy
#
echo "Program output written to satisfy_ithaca_output.txt."

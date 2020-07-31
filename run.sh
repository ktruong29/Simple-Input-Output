#!/bin/bash

#Author: Kien Truong
#Program name: Assignment
#Course ID: CPSC 240

rm *.o
rm *.out

echo "This is program <Demonstrate Integer IO>"

echo "Assemble the module assignment1.asm"
nasm -f elf64 -l assignment1.lis -o assign1.o assignment1.asm

echo "Compile the C++ module assignment1.cpp"
g++ -c -m64 -Wall -l assignment1.lis -o assignment1.o assignment1.cpp -fno-pie -no-pie

echo "Link the two object files already created"
g++ -m64 -o assignment1.out assignment1.o assign1.o -fno-pie -no-pie

echo "The program will run"
./assignment1.out

echo "The bash script file is now closing."

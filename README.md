# Integer I/O Desmonstration in X86
---
The purpose of this simple program is to become familiar with how to perform
simple I/O operations and basic arithmetic operations in X86 language.

This program will do the following:
  Input 2 integers
  Computes and displays the sum of those two inputs
  Computes and displays the product of those two inputted integers.

This program has three different source files:
* A driver file, which is written in C/C++ language.
* An X86 assembly file, which is a function written in X86 language and
is called from the driver program. This program inputs, computes the sum and
product, and outputs the result.
* A bash script is used to compile the two previously mentioned files, link
them to create one executable file, and lastly load that newly created
executable file.

## Prerequisites
---
* A virtual machine
* Install g++ and nasm 

## Instruction on how to run the program
---
*  chmod +x run.sh              
*  ./run.sh
    OR
*  sh run.sh

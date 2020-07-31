/**************************************
Author:        Kien Truong
Program name:  Assignment 1
Course ID:     CPSC 240
***************************************/

#include <stdio.h>
extern "C" long int two_ints_io();

int main()
{
  long int return_code = 99;
  printf("%s", "Welcome to Open source Assembly Programming\n");
  return_code = two_ints_io();

  printf("%s%ld%s\n","The main function received this number: ",return_code,
           "\nMain will now return 0 to the operating system.\nBye");
  return 0;
}

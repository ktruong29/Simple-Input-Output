;---------------------------------------------------------
;Author:        Kien Truong
;Program name:  Assignment 1
;Course ID:     CPSC 240
;---------------------------------------------------------

extern printf         ;External C++ function for writing to standard output device

extern scanf

global two_ints_io

segment .data

initialMess db "This program was built by Kien Truong.", 10,0

inputMess1  db "Please input the first integer: ", 0

outputMess1 db "You entered %ld", 10, 0

inputMess2  db "Please input the second integer: ", 0

outputMess2 db "You entered %ld", 10, 0

sumMess     db "The sum of these two integers is %ld", 10, 0

productMess db "The product of these two integers is %ld", 10, 0

goodbyeMess  db "The integer 6 will be returned to the calling program.", 10, 0

stringFormat db "%s", 0

intFormat    db "%ld", 0

segment .bss
;empty

segment .text
two_ints_io:

  push rbp
  mov rbp, rsp
  push rbx
  push rcx
  push rdx
  push rdi
  push rsi
  push r8
  push r9
  push r10
  push r11
  push r12
  push r13
  push r14
  push r15

  ;=====Show the initial message=======
  mov qword  rax, 0                         ;No floating points
  mov        rdi, stringFormat              ;"%s"
  mov        rsi, initialMess               ;"This program was built by Kien Truong."
  call       printf                         ;output

  ;=====Show the first prompt========
  mov qword rax, 0                          ;No floating points
  mov       rdi, stringFormat               ;"%s"
  mov       rsi, inputMess1                 ;"Please input the first integer: "
  call      printf                          ;output

  ;=====Obtain the first integer=======
  push qword  0                             ;Reserve 8 bytes of storage for the incoming number
  mov  qword  rax, 0                        ;No floating points
  mov         rdi, intFormat                ;"%ld"
  mov         rsi, rsp                      ;Give scanf a point to the reserved storage
  call        scanf                         ;input
  pop r15                                   ;store the first value in r15


  ;=====Show the first outcome=====
  mov qword  rax, 0                         ;No floating points
  mov        rdi, outputMess1               ;When the output contains both words and numbers, do this instead.
  mov        rsi, r15                       ;Make a copy of r15 to rsi
  call       printf                         ;output


  ;=====Show the second prompt=======
  mov qword rax, 0                          ;no floating point numbers
  mov       rdi, stringFormat               ;"%s"
  mov       rsi, inputMess2                 ;"Please input the second integer: "
  call      printf                          ;output

  ;======Obtain the second integer=====
  push qword 0                              ;Reserve 8 bytes of storage for the incoming number
  mov  qword rax, 0                         ;no floating points
  mov        rdi, intFormat                 ;"%ld"
  mov        rsi, rsp                       ;Give scanf a point to the reserved storage
  call       scanf                          ;input
  pop        r14                            ;store the second value in r14

  ;=====Show the second outcome========
  mov qword  rax, 0                         ;no floating point numbers
  mov        rdi, outputMess2               ;"You entered %ld"
  mov        rsi, r14                       ;make a copy of r14 to rsi
  call       printf                         ;output

  ;====Calculate the sum==============
  mov r13, r15                              ;make a copy of r15 to r13 for imul
  add r15, r14                              ;add 2 values r15 += r14

  ;=======Display the sum===========
  mov qword  rax, 0                         ;No floating points
  mov        rdi, sumMess                   ;"The sum of these two integers is %ld"
  mov        rsi, r15                       ;make a copy of r15 to rsi => output
  call       printf                         ;output

  ;=====Calculate product========
  imul r13, r14                             ;r13 *= r14

  ;=======Display the product========
  mov qword  rax, 0                         ;No floating points
  mov        rdi, productMess               ;"The product of these two integers is %ld"
  mov        rsi, r13                       ;make a copy of r13 to rsi =>output
  call       printf                         ;output

  ;=======Display goodbye message======
  mov qword rax, 0
  mov       rdi, stringFormat
  mov       rsi, goodbyeMess
  call      printf

  pop r15
  pop r14
  pop r13
  pop r12
  pop r11
  pop r10
  pop r9
  pop r8
  pop rsi
  pop rdi
  pop rdx
  pop rcx
  pop rbx
  pop rbp

  mov rax, 6                                 ;returning 6 back to assignment1.cpp

  ret

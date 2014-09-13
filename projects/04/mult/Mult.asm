// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)

// Put your code here.

@i // a counter
M=0
@2 // we store the result in R2
M=0
(LOOP)
  @i
  D=M // set D to our counter
  @0
  D=M-D // set D to R0 - counter
  @END
  D;JEQ // END if D=0

  @1
  D=M // set D to R1
  @2
  M=D+M // set R2 to R1 + R2

  @i
  M=M+1 // increment counter

  @LOOP
  0;JMP

(END)
  @END
  0;JMP

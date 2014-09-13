// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.

(START)
  @SCREEN
  D=A
  @pixel // use pixel as a variable that holds the address of the current pixel
  M=D // initialize it to the top left pixel of the screen

(LOOP)
  @KBD // keyboard input
  D=M
  @WHITE
  D;JEQ
  @BLACK
  0;JMP

(WHITE)
  @pixel
  //A=M // set current pixel address to A
  M=0 // white it out
  @NEXT
  0;JMP

(BLACK)
  @pixel
  //A=M // set current pixel address to A
  M=-1 // black it out
  @NEXT
  0;JMP

(NEXT)
  @pixel
  D=M+1
  M=D // set pixel to pixel + 1
  @KBD
  D=A-D
  @START
  D;JEQ
  @LOOP
  0;JMP

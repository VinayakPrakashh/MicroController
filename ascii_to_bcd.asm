/*
 * ascii_to_bcd.asm
 *
 *  Created: 1/27/2023 5:29:31 AM
 *   Author: user
 */ 

 .include "M32DEF.INC"
 .org 00
 ldi r16,'4'
 ldi r17,'7'
 andi r16,0x0f
  swap r16
 andi r17,0x0f
 or r16,r17
 end: jmp end

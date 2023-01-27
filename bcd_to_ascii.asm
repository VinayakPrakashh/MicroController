/*
 * bcd_to_ascii.asm
 *
 *  Created: 1/27/2023 5:42:12 AM
 *   Author: user
 */ 

 .include "M32DEF.INC"
 .org 00
 ldi r16,0x29
 mov r17,r16
 andi r16,0x0f
 ori r16,0x30
 swap r17
 andi r17,0x0f
 ori r17,0x30
 end: jmp end

/*
 * sum.asm
 *
 *  Created: 2/10/2023 5:52:26 AM
 *   Author: user
 */ 


 .include "m32def.inc"
 ldi r20,0x00
 ldi r17,0x10
 ldi r16,0x05
 hai: add r20,r16
 dec r17
 brne hai
 ldi r16,0xFF
 out ddrb,r16
 out portb,r20
 end: jmp end

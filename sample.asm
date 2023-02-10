/*
 * sample.asm
 *
 *  Created: 2/10/2023 6:05:59 AM
 *   Author: user
 */ 


  .include "m32def.inc"
 ldi r20,0x00
 ldi r17,0x10
 ldi r16,0x01
  ldi r18,0xFF
    out ddrb,r18
 hai: add r20,r16
 dec r17
  out portb,r20
 brne hai
 end: jmp end

/*
 * AVRAssembler1.asm
 *
 *  Created: 1/27/2023 4:59:41 AM
 *   Author: user
 */ 


.include "M32DEF.INC"
.ORG 00
ldi r16,0x34
ldi r17,0
ldi r18,0
ldi r19,8
DI: ror r16
brcc li
inc r17
rjmp l2
li: inc r18
l2: dec r19
 brne DI
end: jmp end
/*
 * bitmani2.asm
 *
 *  Created: 2/10/2023 5:40:41 AM
 *   Author: user
 */ 


  .INCLUDE "M32DEF.INC"
 LDI R16,LOW(RAMEND)
 OUT SPL,R16
 LDI R16,HIGH(RAMEND)
 OUT SPH,R16
 OUT DDRB,R16
 REPEAT:SBI PORTB,3
		RCALL DELAY
		CBI PORTB,2
		RCALL DELAY
DELAY:LDI R18,0X02
AGAIN:NOP
      NOP
	  DEC R18
	  BRNE AGAIN
	  RET
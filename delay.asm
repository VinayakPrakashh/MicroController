/*
 * delay.asm
 *
 *  Created: 2/10/2023 5:24:10 AM
 *   Author: user
 */ 


 
  .INCLUDE "M32DEF.INC"
 LDI R16,LOW(RAMEND)
 LDI R17,HIGH(RAMEND)
 OUT SPL,R16
 OUT SPH,R17
 LDI R17,0XFF
 OUT DDRD,R17
 
 SBI PORTD,0
 RCALL DELAY
 SBI PORTD,1
 RCALL DELAY
  SBI PORTD,2
 RCALL DELAY
  SBI PORTD,3
 RCALL DELAY
  SBI PORTD,4
 RCALL DELAY
  SBI PORTD,5
 RCALL DELAY
  SBI PORTD,6
 RCALL DELAY
  SBI PORTD,7
 RCALL DELAY
  END:JMP END
 DELAY:LDI R18,0X02
 AGAIN:NOP
       NOP
	   DEC R18
	   BRNE AGAIN
	   RET
.INCLUDE "M32DEF.INC"
.ORG 00
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
DELAY: LDI R18,0X01
AGAIN: NOP
       NOP
       DEC R18
       BRNE AGAIN
RET
END: JMP END
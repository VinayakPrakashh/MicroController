.INCLUDE "M32DEF.INC"
.ORG 00
LDI R17,'Y'
LDI R18,'N'
LDI R16,0X00
OUT DDRB,R16 /* input mode */
LDI R20,0XFF
OUT DDRD,R20 /* output mode */
SBIS PINB,2 /* skip next instruction if PINB 2nd bit is set */
RJMP LI
OUT PORTD,R17
RJMP END
LI: OUT PORTD,R18
END: JMP END
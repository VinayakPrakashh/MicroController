.INCLUDE "M32DEF.INC"
.ORG 00
LDI R16,'4' 
LDI R17,'7'
ANDI R16,0X0F 
SWAP R16
ANDI R17,0X0F
OR R16,R17 /*result gives 0x47 in R16*/
END: JMP END

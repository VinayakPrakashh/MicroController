.INCLUDE "M32DEF.INC"
.ORG 00
LDI R16,0X29
MOV R17,R16
ANDI R16,0X0F /* 0X09 */
ORI R16,0X30   /* 0X39 */
SWAP R17 /* 0X92 */
ANDI R17,0X0F /* 0X02 */
ORI R17,0X30 /* 0X32 */
END:JMP END
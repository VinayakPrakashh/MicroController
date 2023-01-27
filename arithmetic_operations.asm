/*
 * arithmetic.asm
 *
 *  Created: 3/5/2021 1:53:43 PM
 *   Author: user
 */ 
 .INCLUDE "M32DEF.INC"
 .ORG 00
 LDI R16,0X74
 LDI R17,0X23
 LDI R19,0X54
 ADD R16,R17
 SUB R19,R17
 END:JMP END


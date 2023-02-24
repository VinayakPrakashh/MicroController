/*
 * ascii.c
 *
 * Created: 2/21/2023 6:35:49 AM
 *  Author: user
 */ 


#include <avr/io.h>

int main(void)
{
   unsigned char i,y=0xAA;
   unsigned char one,zero;
   one=0,zero=0;
   DDRB=0xFF;
   DDRC=0xFF;
   for(i=0;i<8;i++){
	   if (y&0x01)
	   one++;
	   else
	   zero++;
	   y=y>>1;
   }
   PORTB=zero;
   PORTC=one;
}   
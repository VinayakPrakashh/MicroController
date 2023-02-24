#include <avr/io.h>

int main(void)
{
   unsigned char y=0X44;
   unsigned char i;
   DDRC =0x08;
   for (i=0;i<8;i++)
   {
	   if(y&0b00000001){
		   PORTC |= (1<<3);
		   y=y>>1;
   }
   else{
	   PORTC &=~(1<<3);
	   y=y>>1;
   }
   }   
   return 0;
}
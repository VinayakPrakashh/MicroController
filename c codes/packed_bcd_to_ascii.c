#include <avr/io.h>
int main(void)
{
    unsigned char x=0X29,y;
    y=x;
    DDRB=0XFF;
    DDRC=0XFF;
    x=x&0X0F;
    x=x|0X30;
    y=y&0XF0;
    y=y>>4;
    y=y|0x30;
PORTB=x;
PORTC=y;
return 0;
    }
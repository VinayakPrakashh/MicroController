#include <avr/io.h>
int main(void)
{
    unsigned char x='4',y='7';
    DDRC=0XFF;
    x=x<<4;
    y&=0X0F;
    x|=y;
    PORTC=x;
    return 0;
    
    }
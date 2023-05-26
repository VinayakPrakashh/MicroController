#include <avr/io.h>
int main(void)
{

    DDRB = 0XFF;
    while (1)
    {
        PORTB = 0XAA;
        delay();
        PORTB = 0X55;
        delay();
    }
}
void delay()
{
    TCNT0 = 0X25;
    TCCR0 = 0X01;
    while (TIFR & 0X01)
    {
        TCCR0 = 0;
        TIFR = 0X01;
    }
}
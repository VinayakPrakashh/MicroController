#define F_CPU 16000000UL
#include <avr/io.h>
#include <util/delay.h>

int main()
{
    DDRB = 0XFF;
    PORTB = 0XFF;
    while (1)
    {
        PORTB = ~PORTB;
        _delay_ms(200);
    }
}
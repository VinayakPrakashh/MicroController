/*
 * delay200.c
 *
 * Created: 2/24/2023 6:10:16 AM
 *  Author: user
 */ 

#include <avr/io.h>
#include <util/delay.h>

void main()
{
	DDRC=0XFF;
    while(1)
    {
       PORTC=0X01;
	 _delay_ms (200);
	   PORTC=0X00;
    }
}
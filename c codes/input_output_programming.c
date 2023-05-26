#include <avr/io.h>
int main(void){
    unsigned char i;
    DDRB=0X00;
    DDRC=0XFF;
    while(1){
        i=PINB;
        PORTC=i;
    }
    return 0;
}
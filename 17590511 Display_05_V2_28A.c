#include "DISPLAY_7S.h"

void main() {
     char Caracter = 43;
     TRISB = 0;
     do {
        PORTB = ASCII_a_7Segmentos(Caracter);
        Delay_ms(200);
        Caracter++;
        if (Caracter > 90) {
           Caracter = 43;
           PORTB = ASCII_a_7Segmentos('Ñ');
           Delay_ms(200);
           PORTB = ASCII_a_7Segmentos('°');
        }
     }while(1);
}
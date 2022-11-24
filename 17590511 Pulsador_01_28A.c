#include "DISPLAY_7S.h"

void main() {
     char Contador = 0;
     TRISA = 0b00010000;
     TRISB = 0;
     PORTB = Contador;
     do {
        if (PORTA.F4 == 1) {
           Contador++;
           if (Contador == 10)
              Contador = 0;
           PORTB = ASCII_a_7Segmentos(Contador + 48);
           Delay_ms(200);
        }
     }while(1);
}
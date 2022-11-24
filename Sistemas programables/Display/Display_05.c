#include "DISPLAY_7S.h"

void main() {
     char Caracter = 'P';
     TRISB = 0;
     do {
        PORTB = ASCII_a_7Segmentos(Caracter);
     }while(1);
}
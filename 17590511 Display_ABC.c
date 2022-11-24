#include "T:\SISTEMAS PROGRAMABLES\MikroC\DISPLAY_7S.h"

int Char = 165;

void main() {
     TRISB = 0;
     do {
         if (Char == 167)
            Char = 43;
         if (Char == 47)
            Char = 48;
         if (Char == 60)
            Char = 61;
         if (Char == 62)
            Char = 65;
         if (Char == 91)
            Char = 165;
         if (Char == 166)
            Char = 167;
         PORTB = ASCII_a_7Segmentos(Char);
         Delay_ms(150);
         Char++;
     } while(1);
}
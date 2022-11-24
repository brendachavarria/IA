#include "T:\SISTEMAS PROGRAMABLES\MikroC\BIN_BCD.h"

int Numero = 124;

void main() {
     TRISB = 0;
     do {
        PORTB = BIN_a_BCD(Numero);
     } while(1);
}
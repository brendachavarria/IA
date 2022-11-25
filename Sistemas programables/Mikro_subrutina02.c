#include "bin_a_bcd.h"
int Numero=124;
void main() {
     TRISB=0;
     do{
        PORTB =  bin_a_bcd(Numero);
     }while(1);
}
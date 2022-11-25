#include <DISPLAY_7S.h>
char Caracter = 'P';
void main() {
  TRISB = 0x00;
  do{
   PORTB = ASCII_a_7Segmentos(Caracter);
  }while(1);
}
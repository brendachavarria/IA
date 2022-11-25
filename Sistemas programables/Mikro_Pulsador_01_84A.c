#include <DISPLAY_7S.h>
char Contador;

void Visualiza(){
     PORTB = numero_a_7Segmentos(Contador);
}

void InicializaContador(void){
   Contador =0;
}

void IncrementaVisualiza () {
  Contador++;
  if (Contador>9){
     InicializaContador();
  }
  Visualiza();
}

void main() {
  TRISA=0b00010000;
  TRISB=0;
  InicializaContador();
  Visualiza();
  do{
   if(PORTA.B4 == 1){
     Delay_ms(20);
     IncrementaVisualiza();
     while(PORTA.B4 == 1);
   }
  }while(1);
}
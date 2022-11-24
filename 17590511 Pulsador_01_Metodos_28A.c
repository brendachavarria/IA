#include "DISPLAY_7S.h"

int Contador;

void InicializaContador() {
     Contador = 0;
}

void Visualiza() {
     PORTB = Numero_a_7Segmentos(Contador);
}

void IncremetaVisualiza() {
     Contador++;
     if (Contador == 10)
        InicializaContador();
}

void main() {
     TRISA = 0b00010000;
     TRISB = 0;
     InicializaContador();
     Visualiza();
     do {
        if (PORTA.F4 == 1) {
           IncremetaVisualiza();
           Visualiza();
           Delay_ms(200);
        }
     }while(1);
}
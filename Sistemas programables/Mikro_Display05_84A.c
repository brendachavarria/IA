# include <display_7s.h>
char Caracter='°';
void main() {
     TRISB=0;
     do{
        PORTB=ascii_a_7Segmentos(Caracter);
     }while(1);
}
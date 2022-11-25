# include <display_7s.h>
char Contador=0;
void InicializaContador(void){
  Contador=0;
}
void Visualiza (void){
  PORTB=ascii_a_7segmentos(Contador);
}
void IncrementaVisualiza(){
  Contador++;
  if(Contador>9)
    InicializaContador();
  Visualiza();
}

void main() {
  TRISA=0b00011111;
  TRISB=0;
  InicializaContador();
  visualiza();
  do{
    if(PORTA==1){
      Delay_ms (20);
      //if (PORTA==1){
        IncrementaVisualiza();
        while (PORTA==1);
      //}
    }
  }while(1);
}
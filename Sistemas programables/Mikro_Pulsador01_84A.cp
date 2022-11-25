#line 1 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/Mikro_Pulsador01_84A.c"
#line 1 "c:/users/brenda/dropbox/pc/documents/7 semestre/2. sistemas programables/prac micro c/display_7s.h"
char ascii_a_7segmentos (char car) {
 char dato[]={0x46,0x04,0x40,0x80,0x00,0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,
 0x07,0x7F,0x67,0x41,0x88,0x00,0x48,0x00,0x00,0x00,0x77,0x7C,
 0x39,0x5E,0x79,0x71,0x6F,0x76,0x19,0x1E,0x7A,0x38,0x37,0x54,
 0x3F,0x73,0x67,0x50,0x6D,0x78,0x1C,0x3E,0x1D,0x70,0x6E,0x49};
 if (car>='+' && car<='Z'){
 return dato[car-43];
 }
 else
 if (car=='Ñ')
 return 0x55;
 else
 if (car=='°')
 return 0x63;
 else
 return 0x00;
}
#line 2 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/Mikro_Pulsador01_84A.c"
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

 IncrementaVisualiza();
 while (PORTA==1);

 }
 }while(1);
}

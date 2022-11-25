#line 1 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/Mikro_prueba pulsador_84A.c"
#line 1 "c:/users/brenda/dropbox/pc/documents/7 semestre/2. sistemas programables/prac micro c/display_7s.h"
int numero_a_7segmentos (char n){
 char dn[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x67};
 return dn[n];
}
int ASCII_a_7Segmentos(char num) {
char DT[]={0x46,0x04,0x40,0x80,0x00,0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,
 0x07,0x7F,0x67,0x41,0x88,0x00,0x48,0x00,0x00,0x00,0x77,0x7C,
 0x39,0x5E,0x79,0x71,0x6F,0x76,0x19,0x1E,0x7A,0x38,0x37,0x54,
 0x3F,0x73,0x67,0x50,0x6B,0x78,0x1C,0x3E,0x1D,0x70,0x6E,0x49};

if(num>='+' && num <='Z'){
 return DT[num-43];

}
else
 if(num== 'Ñ')
 return 0x55;
 else
 if(num == '°')
 return 0x63;
 else
 return 0x00;

}
#line 2 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/Mikro_prueba pulsador_84A.c"
int Contador;
void InicializaContador() {
 Contador = 0;
}

void Visualiza() {
 if(Contador == 0){
 PORTB=0b000000001;
 Delay_ms(100);
 PORTB=0b000000011;
 Delay_ms(100);
 PORTB=0b000000111;
 Delay_ms(100);
 PORTB=0b000001111;
 Delay_ms(100);
 PORTB=0b000011111;
 Delay_ms(100);
 PORTB=0b000111111;
 Delay_ms(100);
 PORTB=0b001111111;
 Delay_ms(100);
 PORTB=0b011111111;
 Delay_ms(100);
 PORTB=0b11111111;
 Delay_ms(100);
 PORTB=0b00000000;
 Delay_ms(100);

 }
}

Visualiza2(){
 PORTB=0b10000000;
 Delay_ms(100);
 PORTB=0b110000000;
 Delay_ms(100);
 PORTB=0b111000000;
 Delay_ms(100);
 PORTB=0b111100000;
 Delay_ms(100);
 PORTB=0b111110000;
 Delay_ms(100);
 PORTB=0b111111000;
 Delay_ms(100);
 PORTB=0b111111100;
 Delay_ms(100);
 PORTB=0b111111110;
 Delay_ms(100);
 PORTB=0b11111111;
 Delay_ms(100);
}

void IncremetaVisualiza() {
 Contador++;
 if (Contador>1)
 InicializaContador();
 Visualiza();
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
 }else{
 IncremetaVisualiza();
 Visualiza2();
 }
 }while(1);
}

#line 1 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/Mikro_Pulsador_profe.c"
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
 PORTB=0b11111110;
 Delay_ms(100);
 PORTB=0b111111100;
 Delay_ms(100);
 PORTB=0b111111000;
 Delay_ms(100);
 PORTB=0b111110000;
 Delay_ms(100);
 PORTB=0b111100000;
 Delay_ms(100);
 PORTB=0b111000000;
 Delay_ms(100);
 PORTB=0b110000000;
 Delay_ms(100);
 PORTB=0b100000000;
 Delay_ms(100);
 PORTB=0b000000000;
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
 PORTB=0b01111111;
 Delay_ms(100);
 PORTB=0b00111111;
 Delay_ms(100);
 PORTB=0b00011111;
 Delay_ms(100);
 PORTB=0b00001111;
 Delay_ms(100);
 PORTB=0b00000111;
 Delay_ms(100);
 PORTB=0b00000011;
 Delay_ms(100);
 PORTB=0b00000001;
 Delay_ms(100);
 PORTB=0b00000000;
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

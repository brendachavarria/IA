#line 1 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/Mikro_02.c"
int Constante=0b01010101;
void main() {
 TRISB=0b00000000;
 TRISA=0b00011111;
 do{
 PORTB=PORTA;
 }while(1);
}

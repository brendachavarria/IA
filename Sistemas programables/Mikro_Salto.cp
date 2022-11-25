#line 1 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/Mikro_Salto.c"
void main() {
 int Numero=13;
 TRISA=0b00011111;
 TRISB=0x00;
 do{
 if(PORTA<Numero){
 PORTB=0xF0;
 }else{
 if(PORTA>Numero){
 PORTB=0b01010101;
 }
 }
 }while(1);
}

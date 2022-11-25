#line 1 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/Mikro_Parpadeo.c"
void main() {
 TRISB=0;
 PORTB=0b00000000;
 do{
 PORTB=0b00000001;
 delay_ms(100);
 PORTB=0b00000000;
 delay_ms(100);
 }while(1);
}

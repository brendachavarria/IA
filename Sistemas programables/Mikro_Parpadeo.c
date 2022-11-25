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
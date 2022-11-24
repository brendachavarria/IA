void main() {
     TRISB = 0;
     do {
        PORTB = 1;
        Delay_ms(50);
        PORTB = 0;
        Delay_ms(50);
     }while(1);
}
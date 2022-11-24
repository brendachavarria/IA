void main() {
     TRISB = 0;
     TRISA = 0b00011111;
     do {
        PORTB = 2 * PORTA;
     } while(1);
}
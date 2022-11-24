void main() {
     TRISB = 0;
     do {
        PORTB = 0b01010101;
     } while(1);
}
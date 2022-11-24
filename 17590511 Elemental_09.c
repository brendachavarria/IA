int M = 0b01010101;

void main() {
     TRISB = 0;
     TRISA = 0b00011111;
     do {
        PORTB = M ^ PORTA;
     } while(1);
}
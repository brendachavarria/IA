int k = 74;

void main() {
     TRISB = 0;
     TRISA = 0b00011111;
     do {
        PORTB = PORTA + k;
     } while(1);
}
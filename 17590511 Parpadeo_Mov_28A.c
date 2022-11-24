int V = 1;

void main() {
     TRISB = 0;
     do {
         PORTB = V;
         Delay_ms(50);
         V <<= 1;
         V |= PORTB;
         if (V > 255)
            V = 1;
     }while(1);
}
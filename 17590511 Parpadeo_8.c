int V = 1;

void main() {
     TRISB = 0;
     do {
        PORTB = V;
        Delay_ms(50);
        PORTB = 0;
        V <<= 1;
        if (V == 256)
           V = 1;
        Delay_ms(50);
     }while(1);
}
void main() {
     TRISA = 0b00011111;
     TRISB = 0;
     do {
        if (PORTA == 13)
           PORTB = 0b11111111;
        else if (PORTA > 13)
                PORTB = 0b01010101;
        else
            PORTB = 0b11110000;
     }while(1);
}
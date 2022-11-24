void main() {
     TRISB = 0;
     TRISA = 0b00011111;
     do {
        switch (PORTA){
        case 0:
             PORTB = 0b00001010;
        break;
        case 1:
             PORTB = 0b00001001;
        break;
        case 2:
             PORTB = 0b00100011;
        break;
        case 3:
             PORTB = 0b00001111;
        break;
        case 4:
             PORTB = 0b00010000;
        break;
        case 5:
             PORTB = 0b00000111;
        break;
        case 6:
             PORTB = 0b00010111;
             break;
        case 7:
             PORTB = 0b00111111;
             break;
        default: 
             PORTB = 0b00000000;
        }
     } while(1);
}
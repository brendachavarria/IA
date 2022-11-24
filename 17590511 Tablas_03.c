void main() {
     TRISB = 0;
     TRISA = 0b00011111;
     do {
        switch(PORTA & 7){
            case 0:
                 PORTB = 10;
                 break;
            case 1:
                 PORTB = 9;
                 break;
            case 2:
                 PORTB = 35;
                 break;
            case 3:
                 PORTB = 15;
                 break;
            case 4:
                 PORTB = 32;
                 break;
            case 5:
                 PORTB = 7;
                 break;
            case 6:
                 PORTB = 23;
                 break;
            case 7:
                 PORTB = 63;
                 break;

        }
     }while(1);
}
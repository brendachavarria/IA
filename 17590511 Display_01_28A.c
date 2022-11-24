void main() {
     TRISB = 0;
     TRISA = 0b00011111;
     do {
        switch(PORTA) {
          case 0:
               PORTB = 0x3F;
               break;
          case 1: 
               PORTB = 0x06;
               break;
          case 2: 
               PORTB = 0x5B;
               break;
          case 3: 
               PORTB = 0x4F;
               break;
          case 4: 
               PORTB = 0x66;
               break;
          case 5: 
               PORTB = 0x6D;
               break;
          case 6: 
               PORTB = 0x7D;
               break;
          case 7: 
               PORTB = 0x07;
               break;
          case 8: 
               PORTB = 0x7F;
               break;
          case 9: 
               PORTB = 0x67;
               break;
          case 10: 
               PORTB = 0x77;
               break;
          case 11: 
               PORTB = 0x7C;
               break;
          case 12: 
               PORTB = 0x39;
               break;
          case 13: 
               PORTB = 0x5E;
               break;
          case 14: 
               PORTB = 0x79;
               break;
          case 15: 
               PORTB = 0x71;
               break;
        }
     }while(1);
}
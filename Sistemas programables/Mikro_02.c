void main() {
     TRISB=0b00000000;   //=0;(Decimal) //=0x0; (Hexadecimal)
     TRISA=0b00011111;
     do{
        PORTB=PORTA;
     }while(1);
}
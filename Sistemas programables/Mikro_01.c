int Constante=0b01010101;
void main() {
     TRISB=0b00000000;   //=0;(Decimal) //=0x0; (Hexadecimal)
     do{
        PORTB=Constante;
     }while(1);
}
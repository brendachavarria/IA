int i [] = {10, 9, 35, 15, 32, 7, 23, 63};

void main(){
    TRISB = 0;
    TRISA = 0b00011111;
    do {
        PORTB = i[PORTA & 7];
    }while(1);
}
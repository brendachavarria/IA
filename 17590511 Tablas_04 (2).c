int TablaVerdad(int i) {
    int j[] = {0x0A, 0x09, 0x23, 0x0F, 0x20, 0x07, 0x17, 0x03F};
    return j[i];
}

void main(){
    TRISB = 0;
    TRISA = 31;
    do {
        PORTB = TablaVerdad(PORTA & 7);
    }while(1);
}
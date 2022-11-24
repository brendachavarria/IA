unsigned short BIN_a_BCD(unsigned short n) {
    unsigned short Centenas = 0, Decenas = 0, Unidades = n;
    while(Unidades >= 10) {
        Unidades -= 10;
        Decenas++;
        if (Decenas == 10) {
           Centenas++;
           Decenas = 0;
        }
    }
    Decenas <<= 4;
    return Decenas |= Unidades;
}

void main() {
     TRISB = 0;
     TRISA = 0b00011111;
     do {
        PORTB = BIN_a_BCD(PORTA);
     } while(1);
}
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
     do {
        PORTB = BIN_a_BCD(177);
     } while(1);
}
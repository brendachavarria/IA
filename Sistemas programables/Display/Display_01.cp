#line 1 "T:/SISTEMAS PROGRAMABLES/MikroC/Display/Display_01.c"
int Binario_a_7Segmentos(int i) {
 int j[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
 return j[i];
}

void main() {
 TRISB = 0;
 TRISA = 31;
 do {
 PORTB = Binario_a_7Segmentos(PORTA);
 }while(1);
}

#line 1 "T:/SISTEMAS PROGRAMABLES/MikroC/Display/Display_05_V2.c"
#line 1 "t:/sistemas programables/mikroc/display_7s.h"
int ASCII_a_7Segmentos(char c) {
char dt [] = {0x46, 0x04, 0x40, 0x80, 0x00, 0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x67, 0x41, 0x88, 0x00, 0x48, 0x00, 0x00, 0x00, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71, 0x6F, 0x76, 0x19, 0x1E, 0x7A, 0x38, 0x37, 0x54, 0x3F, 0x73, 0x67, 0x50, 0x6D, 0x78, 0x1C, 0x3E, 0x1D, 0x70, 0x6E, 0x49};
 if (c >= '+' && c <= 'Z')
 return dt[c - 43];
 else if (c == '�')
 return 0x55;
 else if (c == '�')
 return 0x63;
 else
 return 0x00;
}
#line 3 "T:/SISTEMAS PROGRAMABLES/MikroC/Display/Display_05_V2.c"
void main() {
 char Caracter = 43;
 TRISB = 0;
 do {
 PORTB = ASCII_a_7Segmentos(Caracter);
 Delay_ms(200);
 Caracter++;
 if (Caracter > 90) {
 Caracter = 43;
 PORTB = ASCII_a_7Segmentos('�');
 Delay_ms(200);
 PORTB = ASCII_a_7Segmentos('�');
 }
 }while(1);
}

#line 1 "T:/SISTEMAS PROGRAMABLES/MikroC/Display_ABC/Display_ABC.c"
#line 1 "t:/sistemas programables/mikroc/display_7s.h"
int Configuracion(int entrada){
 switch(entrada){
 case 0: return 0b00001010;
 case 1: return 0b00001001;
 case 2: return 0b00100011;
 case 3: return 0b00001111;
 case 4: return 0b00100000;
 case 5: return 0b00000111;
 case 6: return 0b00010111;
 case 7: return 0b00111111;
 }
}

int ASCII_a_7Segmentos (char c){
 if(c == ' '){
 return 0x00;
 }
 else if(c == 'Ñ'){
 return 0x55;
 }
 else if(c == '°'){
 return 0x63;
 }
 else if(c < '+' || c > 'Z'){
 return 0b10000000;
 }
 else{
 switch(c){
 case '+': return 0x46;
 case '\'': return 0x04;
 case '-': return 0x40;
 case '.': return 0x80;
 case '/': return 0x00;
 case '0': return 0x3F;
 case '1': return 0x06;
 case '2': return 0x5B;
 case '3': return 0x4F;
 case '4': return 0x66;
 case '5': return 0x6D;
 case '6': return 0x7D;
 case '7': return 0x07;
 case '8': return 0x7F;
 case '9': return 0x67;
 case ':': return 0x41;
 case ';': return 0x88;
 case '<': return 0x00;
 case '=': return 0x48;
 case '>': return 0x00;
 case '?': return 0x00;
 case '@': return 0x00;
 case 'A': return 0x77;
 case 'B': return 0x7C;
 case 'C': return 0x39;
 case 'D': return 0x5E;
 case 'E': return 0x79;
 case 'F': return 0x71;
 case 'G': return 0x6F;
 case 'H': return 0x76;
 case 'I': return 0x19;
 case 'J': return 0x1E;
 case 'K': return 0x7A;
 case 'L': return 0x38;
 case 'M': return 0x37;
 case 'N': return 0x54;
 case 'O': return 0x3F;
 case 'P': return 0x73;
 case 'Q': return 0x67;
 case 'R': return 0x50;
 case 'S': return 0x6D;
 case 'T': return 0x78;
 case 'U': return 0x1C;
 case 'V': return 0x3E;
 case 'W': return 0x1D;
 case 'X': return 0x70;
 case 'Y': return 0x6E;
 case 'Z': return 0x49;
 }
 }
}

int Numero_a_7Segmentos (int valor){
 switch(valor){
 case 0: return 0x3F;
 case 1: return 0x06;
 case 2: return 0x5B;
 case 3: return 0x4F;
 case 4: return 0x66;
 case 5: return 0x6D;
 case 6: return 0x7D;
 case 7: return 0x07;
 case 8: return 0x7F;
 case 9: return 0x67;
 }
}
#line 3 "T:/SISTEMAS PROGRAMABLES/MikroC/Display_ABC/Display_ABC.c"
int Char = 165;

void main() {
 TRISB = 0;
 do {
 if (Char == 167)
 PORTB = 0b11111111;
 Char = 43;
 if (Char == 47)
 Char = 48;
 if (Char == 60)
 Char = 61;
 if (Char == 62)
 Char = 65;
 if (Char == 91)
 Char = 165;
 if (Char == 166)
 Char = 167;
 PORTB = ASCII_a_7Segmentos(Char);
 Delay_ms(150);
 Char++;
 } while(1);
}

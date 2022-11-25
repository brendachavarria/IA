#line 1 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/Mikro_Display_01_84A.c"
#line 1 "c:/users/brenda/dropbox/pc/documents/7 semestre/2. sistemas programables/prac micro c/display_7s.h"
int ASCII_a_7Segmentos(char num) {
char DT[]={0x46,0x04,0x40,0x80,0x00,0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,
 0x07,0x7F,0x67,0x41,0x88,0x00,0x48,0x00,0x00,0x00,0x77,0x7C,
 0x39,0x5E,0x79,0x71,0x6F,0x76,0x19,0x1E,0x7A,0x38,0x37,0x54,
 0x3F,0x73,0x67,0x50,0x6B,0x78,0x1C,0x3E,0x1D,0x70,0x6E,0x49};

if(num>='+' && num <='Z'){
 return DT[num-43];

}
else
 if(num== 'Ñ')
 return 0x55;
 else
 if(num == '°')
 return 0x63;
 else
 return 0x00;

}
#line 2 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/Mikro_Display_01_84A.c"
int Binario_a_7Segmentos(int valor){
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
 case 10: return 0x77;
 case 11: return 0x7C;
 case 12: return 0x39;
 case 13: return 0x5E;
 case 14: return 0x79;
 case 15: return 0x71;
 }
}
void main() {
 int x,aux,u;
 TRISA=0b00001111;
 TRISB=0;
 PORTB=0;
 do{
 x=PORTA;
 PORTB=Binario_a_7Segmentos(x);
 }while(1);
}

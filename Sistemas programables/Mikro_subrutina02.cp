#line 1 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/Mikro_subrutina02.c"
#line 1 "c:/users/brenda/dropbox/pc/documents/7 semestre/2. sistemas programables/prac micro c/bin_a_bcd.h"
int bin_a_bcd (int num){
 unsigned short Millares=0,Centenas=0,Decenas=0,Unidades;
 int aux=0;
 Unidades=num;
 while(Unidades >= 10){
 Unidades = Unidades - 10;
 Decenas++;
 if(decenas == 10){
 Decenas = 0;
 Centenas++;
 if(centenas == 10){
 Centenas=0;
 Millares++;
 }
 }
 }
 aux=Millares<<12;
 aux=Centenas<<8;
 aux=Decenas<<4;
 aux=aux+Unidades;
 return(aux);
}
#line 2 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/Mikro_subrutina02.c"
int Numero=124;
void main() {
 TRISB=0;
 do{
 PORTB = bin_a_bcd(Numero);
 }while(1);
}

#line 1 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/Mikro_subrutina_01.c"
int Numero=189;
int BIN_a_BCD (int num){
 short Millares=0, Centenas=0, Decenas=0, Unidades=0;
 int aux=0;
 Unidades=num;
 while(Unidades>=10){
 Unidades=Unidades-10;
 Decenas++;
 if(Decenas==10){
 Decenas=0;
 Centenas++;
 if(Centenas==10){
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
void main() {
 TRISB=0;
 do{
 PORTB=BIN_a_BCD (Numero);
 }while (1);
}

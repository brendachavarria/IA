#line 1 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/Mikro_subrutina_01_877A.c"
int Numero=8921;
int BIN_a_BCD (int *num1, int *num2){
 int Millares=0, Centenas=0, Decenas=0, Unidades=0;
 int aux1,aux2;
 Unidades=*num1;
 while(Unidades>=10){
 Unidades=Unidades-10;
 Decenas++;
 if(Decenas>=10){
 Decenas=0;
 Centenas++;
 }
 if(Centenas>=10){
 Centenas=0;
 Millares++;
 }
 }
 aux1=0;
 aux1=Millares<<4;
 aux1=aux1+Centenas;
 *num2=aux1;
 aux2=0;
 aux2=Decenas<<4;
 aux2=aux2+Unidades;
 *num1=aux2;
}

void main() {
 int pc=0, pd;
 TRISC=0;
 TRISD=0;
 do{
 pc=Numero;
 BIN_a_BCD (&pc,&pd);
 PORTC=pc;
 PORTD=pd;
 }while (1);
}

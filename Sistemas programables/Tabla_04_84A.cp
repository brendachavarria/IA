#line 1 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/Tabla_04_84A.c"
char TablaVerdad(int a){
 char DT[]={0x0A,0x09,0x23,0x0F,0x20,0x07,0x17,0x3F};
 return (DT[a]);
}

void main() {
 int x;
 TRISB = 0x00;
 TRISA = 0x1F;
 do{
 x = PORTA&7;
 PORTB = TablaVerdad(x);
 }while(1);
}

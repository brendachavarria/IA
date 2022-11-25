char TablaVerdad(int a){
     char DT []={0x0A, 0x09, 0x23,0x0f,0x20,0x07,0x17,0x3f};
     return (DT[a]);
}
void main() {
     int x;
     TRISB=0X00;
     TRISA=0X1F;
     do{
       x=PORTA&7;
       PORTB=TablaVerdad(x);
     }while(1);
}
int TablaVerdad (int W){
switch (W){
       case 0: return 10;
       case 1: return 9;
       case 2: return 35;
       case 3: return 15;
       case 4: return 32;
       case 5: return 7;
       case 6: return 23;
       case 7: return 63;
       }
}
void main() {
 int W;
    TRISA=255;
    TRISB=0;
    do{
      W=PORTA;
      W=W&7;
      PORTB=TablaVerdad(W);
    }while(1);
}
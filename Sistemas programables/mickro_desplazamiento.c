void main() {
  int led=1;
  TRISB=0x00;
 do{
   PORTB=led;
   delay_ms (200);
   if(led>=128)
    led=1;
   else
    led=led<<1;
   }while(1);
}
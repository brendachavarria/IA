 unsigned short duty = 0;
 void Interrupt(){
  if (TMR0IF_bit){
   if( PORTA.F0 ){
    TMR0 = duty;
     PORTA.F0 = 0;}
   else {
    TMR0 = (255 - duty) ;
    PORTA.F0 = 1;
    }
   TMR0IF_bit         = 0;
   }
 }
 void main() {
  TRISA.F0 = 0;
  TRISB = 3;
  PORTA = 0;
  PORTB = 0;
  OPTION_REG         = 2;
  TMR0                 = 0;
  INTCON         = 0xA0;
  while(1){
   while(!PORTB.F0){
    if(duty > 254){
     duty = 254;
     PORTB.F2 =1;}
    duty++;
    delay_ms(100);
    }
   while(!PORTB.F1){
    if(duty < 1)
     duty = 1;
    duty--;
    PORTB.F2 =0;
    delay_ms(100);
    }
   }
  }
int cont1=0, sal1=0, ban1=0, ban2=0, sal2=128, cont2=64;

void Ciclo1(){
  if(ban2==1){
    sal2=sal2+cont2;
    cont2=cont2/2;
    if(sal2==255){
      PORTB=sal2;
      delay_ms(200);
      sal2=127;
      ban2=0;
      cont2=64;
    }
  }else{
      sal2=sal2-cont2;
      cont2=cont2/2;
      if(sal2<=0){
      sal2=128;
      cont2=64;
      ban2=1;
      }
  }
}

void Ciclo2(){
   if(ban1==1){
    sal1=sal1+cont1;
    cont1=cont1*2;
    if(sal1>255){
      sal1=254;
      ban1=0;
      cont1=2;
    }
   }else{
    sal1=sal1-cont1;
    cont1=cont1*2;
     if(sal1<1){
     sal1=1;
     cont1=2;
     ban1=1;
    }
   }
}

void main() {
  short aux1=0;
  TRISA=0B00010000;
  TRISB=0;
  do{
    if (PORTA.B4==1){
    aux1=~aux1;
    while (PORTA.B4==1)
      sal2=128;
      sal1=1;
    }
    if(aux1==0){
    PORTB=sal1;
    delay_ms(200);
    Ciclo2();
    }else{
    PORTB=sal2;
    delay_ms(200);
    Ciclo1();
    }
  }while(1);
}
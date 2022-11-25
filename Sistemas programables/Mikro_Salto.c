void main() {
     int Numero=13;
     TRISA=0b00011111;
     TRISB=0x00;
     do{
         if(PORTA<Numero){
            PORTB=0xF0;
         }else{
           if(PORTA>Numero){
              PORTB=0b01010101;
           }
         }
     }while(1);
}
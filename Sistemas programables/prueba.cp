#line 1 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/prueba.c"
void main() {
 int led=1;
 TRISB=0;

 do{
 PORTA=TRISA;
 switch (PORTA){
    case 0:
      PORTB=b'00001010';
     break;

    case 1:
      PORTB=b'00001001';
     break;

    case 2:
      PORTB=b'00100011';
     break;

    case 3:
      PORTB=b'00001111';
     break;

    case 4:
      PORTB=b'00100000';
     break;

    case 5:
      PORTB=b'00000111';
     break;

    case 6:
      PORTB=b'00010111';
     break;

    case 7:
      PORTB=b'00111111';
     break;

  
   }
 }while(1);
}

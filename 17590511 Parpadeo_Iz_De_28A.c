int Valor = 1;

void main() {
     TRISB = 0;
     do {
        int j;
        for (j = 0; j < 7; j++)
        {
          PORTB = Valor;
          Valor <<= 1;
          Delay_ms(50);
        }
        for (j = 0; j < 7; j++)
        {
          PORTB = Valor;
          Valor >>= 1;
          Delay_ms(50);
        }
     }while(1);
}
//Funcion Para Convertir a 7Segmentos
int Binario_a_7Segmentos (int valor){
     switch(valor){
          case 0: return 0x3F;
          case 1: return 0x06;
          case 2: return 0x5B;
          case 3: return 0x4F;
          case 4: return 0x66;
          case 5: return 0x6D;
          case 6: return 0x7D;
          case 7: return 0x07;
          case 8: return 0x7F;
          case 9: return 0x67;
          case 10: return 0x77;
          case 11: return 0x7C;
          case 12: return 0x39;
          case 13: return 0x5E;
          case 14: return 0x79;
          case 15: return 0x71;
     }
}
//Funcion para convertir a BCD
int BIN_a_BCD (int Unidades){
     int Centenas=0,Decenas=0,suma=0,Mil=0;
     while (Unidades>=10){
     Unidades=Unidades-10;
     Decenas++;
     if(Decenas==10){
     Decenas=0;
     Centenas++;
     if(Centenas==10){
     Centenas=0;
     Mil++;
           }
     }
}
     suma = Mil;
     suma = suma<<4;
     suma = suma + Centenas;
     suma = suma<<4;
     suma = suma + Decenas;
     suma = suma<<4;
     suma = suma + Unidades;
     return suma;
}


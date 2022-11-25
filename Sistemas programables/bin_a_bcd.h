 int bin_a_bcd (int num){
     unsigned short Millares=0,Centenas=0,Decenas=0,Unidades;
     int aux=0;
     Unidades=num;
     while(Unidades >= 10){
      Unidades = Unidades - 10;
      Decenas++;
       if(decenas == 10){
       Decenas = 0;
       Centenas++;
       if(centenas == 10){
         Centenas=0;
         Millares++;
         }
        }
      }
      aux=Millares<<12;
      aux=Centenas<<8;
      aux=Decenas<<4;
      aux=aux+Unidades;
      return(aux);
}
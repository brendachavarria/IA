sbit LCD_RS at RA0_bit;
sbit LCD_EN at RA2_bit;
sbit LCD_D7 at RB7_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D4 at RB4_bit;

sbit LCD_RS_Direction at TRISA0_bit;
sbit LCD_EN_Direction at TRISA2_bit;
sbit LCD_D7_Direction at TRISB7_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB4_bit;

void main() {
     char cad[]={"Estudia un Ciclo Formativo deElectronica"};
     short c=16, i=0, x=0, a=0;
     LCD_Init();
     Lcd_Cmd(_LCD_CLEAR);
     Lcd_Cmd(_LCD_CURSOR_OFF);
     //Lcd_out_Cp("Estudia un Ciclo Formativo deElectronica"); //(1,micro,"Estudia un Ciclo Formativo de Electronic");
     //Lcd_out(1,16,"Estudia un Ciclo Formativo de Eletronica");
     delay_ms(50);
     do{
        //Lcd_cmd(_LCD_SHIFT_LEFT);
        /*i++;
        if(i>=41){
          i=0;
        }
        if(i<16){
          a=0;
        }
        else
        a=a-c+1; */
        for(x=c;x<=41;x++){
          Lcd_Chr(1,c,cad[x]);
          c--;
        }
        delay_ms(50);
        /*c--;
        if(c==0){
          c=16;
        } */
     }while(1);
}
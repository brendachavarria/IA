#line 1 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/Mikro_Mensaje07_628A.c"
sbit LCD_RS at RA0_bit;
sbit LCD_EN at RA2_bit;
sbit LCD_D7 at RA7_bit;
sbit LCD_D6 at RA6_bit;
sbit LCD_D5 at RA3_bit;
sbit LCD_D4 at RA1_bit;

sbit LCD_RS_Direction at TRISA0_bit;
sbit LCD_EN_Direction at TRISA2_bit;
sbit LCD_D7_Direction at TRISA7_bit;
sbit LCD_D6_Direction at TRISA6_bit;
sbit LCD_D5_Direction at TRISA3_bit;
sbit LCD_D4_Direction at TRISA1_bit;

void main() {
 char cad []=("Estudia un Ciclo Formativo de Electronica");
 short a=1, b=16;
 LCD_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_out(1,16,cad);
 do{
 if(a==1){
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_out(1,16,cad);
 delay_ms(50);
 }
 if(a>17){
 Lcd_out(1,b--,cad);
 delay_ms(50);
 }
 Lcd_cmd(_LCD_SHIFT_LEFT);
 delay_ms(30);
 a++;
 if(a>39){
 a=1;
 b=16;
 }
 }while(1);
}

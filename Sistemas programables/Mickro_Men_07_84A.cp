#line 1 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/Mickro_Men_07_84A.c"
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

unsigned int micro=16;

void main() {
 LCD_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_out_Cp("Estudia un Ciclo Formativo deElectronica");

 do{
 Lcd_cmd(_LCD_SHIFT_LEFT);
 delay_ms(30);
 }while(1);
}

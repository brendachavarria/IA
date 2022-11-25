#line 1 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/Mikro_LCD_03_84A.c"
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
 unsigned short num1=0x1D,num2=0x0D;
 char cad1[3],cad2[3],a,b,c,d;
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 ByteToHex(num1,cad1);
 ByteToHex(num2,cad2);
 Lcd_Out(1,1,cad1);
 Lcd_Out(2,1,cad2);
 a=cad1[0];
 b=cad1[1];
 if ((num1&11110000)==0)
 Lcd_Chr(1, 5, ' ');
 else
 Lcd_Chr(1, 5, a);
 Lcd_Chr(1, 6, b);
 c=cad2[0];
 d=cad2[1];
 if ((num2&11110000)==0)
 Lcd_Chr(2, 5, ' ');
 else
 Lcd_Chr(2, 5, c);
 Lcd_Chr(2, 6, d);
 Lcd_Chr(1, 9, b);
 Lcd_Chr(2, 9, d);
}

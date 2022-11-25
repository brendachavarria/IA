#line 1 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/Mikro_Teclado03_877A.c"

char keypadPort at PORTB;

sbit LCD_RS at RA0_bit;
sbit LCD_EN at RA2_bit;
sbit LCD_D7 at RB7_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D5 at RB3_bit;
sbit LCD_D4 at RB1_bit;


sbit LCD_RS_Direction at TRISA0_bit;
sbit LCD_EN_Direction at TRISA2_bit;
sbit LCD_D7_Direction at TRISB7_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D5_Direction at TRISB3_bit;
sbit LCD_D4_Direction at TRISB1_bit;

char LeerTeclado( void )
{
 switch( Keypad_Key_Press() )
 {
 case 1: return '7';
 case 2: return '8';
 case 3: return '9';
 case 4: return 'F';
 case 5: return '4';
 case 6: return '5';
 case 7: return '6';
 case 8: return 'E';
 case 9: return '1';
 case 10: return '2';
 case 11: return '3';
 case 12: return 'D';
 case 13: return 'A';
 case 14: return '0';
 case 15: return 'B';
 case 16: return 'C';
 default: return 0;
 }
}

void main() {


 char Tecla, cad1[10];
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Out(1, 1,"Tecla:");
 do {



 Tecla=LeerTeclado();
 Lcd_Chr(2,1,Tecla);
 } while (1);
}

//Declaración del puerto para el teclado 4x4
char keypadPort at PORTB;
// Lcd pinout settings
sbit LCD_RS at RA0_bit;
sbit LCD_EN at RA2_bit;
sbit LCD_D7 at RA7_bit;
sbit LCD_D6 at RA6_bit;
sbit LCD_D5 at RA3_bit;
sbit LCD_D4 at RA1_bit;

// Pin direction
sbit LCD_RS_Direction at TRISA0_bit;
sbit LCD_EN_Direction at TRISA2_bit;
sbit LCD_D7_Direction at TRISA7_bit;
sbit LCD_D6_Direction at TRISA6_bit;
sbit LCD_D5_Direction at TRISA3_bit;
sbit LCD_D4_Direction at TRISA1_bit;

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
    default: return 0; //Tecla no pulsada.
  }
}

void main() {
  unsigned short Tecla;
  //char Text[20];
  Lcd_Init();
  Lcd_Cmd(_LCD_CLEAR);
  Lcd_Cmd(_LCD_CURSOR_OFF);
  Lcd_Out(1, 1,"Tecla:");
  do {
    //tecla=Keypad_Key_Press();
    //ByteToStr (Tecla,cad1);
    //Lcd_Out(2, 1,cad1);
    Tecla=LeerTeclado(); //Se lee el teclado y su resultado se guarda en Tecla.
    Lcd_Chr(2,1,Tecla);
  } while (1);
}
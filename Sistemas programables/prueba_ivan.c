//Declaracion del puerto para el teclado 4x4
char keypadPort at PORTB;
// Lcd_ pintout settings
sbit LCD_RS at RA0_bit;
sbit LCD_EN at RA2_bit;
sbit LCD_D7 at RB4_bit;
sbit LCD_D6 at RB5_bit;
sbit LCD_D5 at RB6_bit;
sbit LCD_D4 at RB7_bit;

//Pin direction
sbit LCD_RS_Direction at TRISA0_bit;
sbit LCD_EN_Direction at TRISA2_bit;
sbit LCD_D7_Direction at TRISB4_bit;
sbit LCD_D6_Direction at TRISB5_bit;
sbit LCD_D5_Direction at TRISB6_bit;
sbit LCD_D4_Direction at TRISB7_bit;

void main() {
     unsigned short Tecla;
     char cad[]={"Estudia un Ciclo Formativo de Eletronica"};
     short a=1,b=16;
     //char Text[20];
     Lcd_Init();
     Lcd_Cmd(_LCD_CLEAR);
     Lcd_Cmd(_LCD_CURSOR_OFF);
     Lcd_Out(1,16,cad);

     do{
        //Tecla=LeerTeclado();
        if(a==1){
          Lcd_Cmd(_LCD_CLEAR);
          Lcd_Out(1,16,cad);
          delay_ms(30);
        }
        if(a>17){
          Lcd_Out(1,b--,cad);
          delay_ms(30);
        }
        Lcd_cmd(_LCD_SHIFT_LEFT);
        delay_ms(30);
        a++;
        if(a>40){
          a=1;
          b=16;
        }
     }while(1);
}
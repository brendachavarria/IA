#include <Keypad.h>
#include <LiquidCrystal.h>

LiquidCrystal lcd(22, 23, 24, 25, 26, 27, 28); //(RS, RW, E, D4,D5, D6, D7)
const byte filas = 4; 
const byte columnas = 4;
int contador = 0;
byte pinesFilas[]  = {9,8,7,6};
byte pinesColumnas[] = {5,4,3,2};
char teclas[4][4] = {{'1','2','3','A'},
                     {'4','5','6','B'},
                     {'7','8','9','C'},
                     {'F','0','E','D'}};
Keypad teclado1 = Keypad( makeKeymap(teclas), pinesFilas, pinesColumnas, filas, columnas);
                     
void setup() {
  Serial.begin(9600);
  Serial.println("Teclado 4x4 con Biblioteca Keypad");
  Serial.println();
  lcd.begin(16, 2);
  lcd.setCursor(0, 0);
}
void loop() {
  char tecla_presionada = teclado1.getKey();
  if (tecla_presionada)
  {
    Serial.print("Tecla: ");
    Serial.println(tecla_presionada);
    lcd.print(tecla_presionada);
    contador++;
    if (contador == 16)
      lcd.setCursor(0, 1);
    if (contador == 33) {
      contador = 0;
      lcd.setCursor(0, 0);
      lcd.clear();
      lcd.print(tecla_presionada);
    }
  }
}

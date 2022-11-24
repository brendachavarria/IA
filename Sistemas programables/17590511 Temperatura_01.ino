#include <LiquidCrystal.h>  

LiquidCrystal lcd(22, 23, 24, 25, 26, 27, 28); //(RS, RW, E, D4,D5, D6, D7)
 
void setup() {
  lcd.begin(16, 2);
}

void loop() {
  float temp = analogRead(A0);
  temp = temp * 5 / 1023;
  temp = temp * 100;
  lcd.setCursor(0, 0);
  lcd.print("Temperatura: ");
  lcd.noCursor();
  lcd.setCursor(1, 1);
  lcd.print(temp);
  lcd.noCursor();
  lcd.setCursor(6, 1);
  lcd.print(" C");
  lcd.noCursor();
  delay(100);
}

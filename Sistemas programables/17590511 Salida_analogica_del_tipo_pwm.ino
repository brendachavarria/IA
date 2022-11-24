int ledPin = 9; // pin PWM para el LED
void setup(){} // no es necesario configurar nada
void loop()
{
for (int i=0; i<=255; i++) // el valor de i asciende
{
analogWrite(ledPin, i); // se escribe el valor de I en el PIN de salida del LED
delay(100); // pauses for 100ms
}
for (int i=255; i>=0; i--) // el valor de I desciendei
{
analogWrite(ledPin, i); // se escribe el valor de ii
delay(100); // pasusa durante 100ms
}
}

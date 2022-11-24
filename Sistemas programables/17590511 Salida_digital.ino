int ledPin = 13; // LED en el pin digital 13
void setup()
// configura el pin de salida
{
pinMode(ledPin, OUTPUT); // configura el pin 13 como salida
}
void loop()
// inicia el bucle del programa
{
digitalWrite(ledPin, HIGH); // activa el LED
delay(1000); // espera 1 segundo
digitalWrite(ledPin, LOW); // desactiva el LED
delay(1000); // espera 1 segundo
}

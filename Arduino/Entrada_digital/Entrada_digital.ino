int ledPin = 13; // pin 13 asignado para el LED de salida
int inPin = 12; // pin 2 asignado para el pulsador
void setup() // Configura entradas y salidas
{
pinMode(ledPin, OUTPUT); // declara LED como salida
pinMode(inPin, INPUT); // declara pulsador como entrada
}
void loop()
{
if (digitalRead(inPin) == HIGH) // testea si la entrada esta activa HIGH
{
digitalWrite(ledPin, HIGH); // enciende el LED
delay(1000); // espera 1 segundo
digitalWrite(ledPin, LOW); // apaga el LED
}
}

int outPin = 5; // pin de salida para el MOSFET
void setup()
{
pinMode(outPin, OUTPUT); // pin5 como salida
}
void loop()
{
for (int i=0; i<=5; i++)
// repetir bucle 5 veces
{
digitalWrite(outPin, HIGH); // activa el MOSFET
delay(250); // espera 1/4 segundo
digitalWrite(outPin, LOW); // desactiva el MOSFET
delay(250); // espera 1/4 segundo
}
delay(1000); // espera 1 segundo
}

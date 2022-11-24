int servoPin = 21; // servo conectado al pin digital 2
int myAngle; // ángulo del servo de 0-180
int pulseWidth; // anchura del pulso para la función servoPulse
void setup()
{
pinMode(servoPin, OUTPUT); // configura pin 2 como salida
}
void servoPulse(int servoPin, int myAngle)
{
pulseWidth = (myAngle * 10) + 600; // determina retardo
digitalWrite(servoPin, HIGH); // activa el servo
delayMicroseconds(pulseWidth); // pausa
digitalWrite(servoPin, LOW); // desactiva el servo
delay(20); // retardo de refresco
}
void loop()
{
// el servo inicia su recorrido en 10º y gira hasta 170º
for (myAngle=10; myAngle<=170; myAngle++)
{
servoPulse(servoPin, myAngle);
}
// el servo vuelve desde 170º hasta 10º
for (myAngle=170; myAngle>=10; myAngle--)
{
servoPulse(servoPin, myAngle);
}
}

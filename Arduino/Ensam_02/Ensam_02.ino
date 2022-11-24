int pin;

void setup() {
  // put your setup code here, to run once:
  for (pin=2;pin<=9;pin++)
    pinMode(pin, OUTPUT);
  for (pin=22;pin<=29;pin++)
    pinMode(pin, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  for (int c=1;c<=8;c++)
    digitalWrite(1+c, digitalRead(21+c));
}

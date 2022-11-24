int outpin;

void setup() {
  // put your setup code here, to run once:
  for (outpin=2;outpin<=9;outpin++)
    pinMode(outpin, OUTPUT);
}

void loop() {
  int constante []={1,0,1,0,1,0,1,0};
  for (outpin=2;outpin<=9;outpin++)
      digitalWrite(outpin, constante[outpin-2]);
  // put your main code here, to run repeatedly:
}

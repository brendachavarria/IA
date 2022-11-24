int outpin;

void setup() {
  // put your setup code here, to run once:
  for (outpin=2;outpin<10;outpin++)
    pinMode(outpin, OUTPUT);
}

void loop() {
  int constante []={0,1,0,1,0,1,0,1};
  for (outpin=2;outpin<=9;outpin++)
    if (constante[outpin - 2] == 1)
      digitalWrite(outpin, HIGH);
    else
      digitalWrite(outpin, LOW);
  // put your main code here, to run repeatedly:
}

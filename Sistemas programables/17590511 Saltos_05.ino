int led, num = 13;

void setup() {
  for(led = 2;led <= 9;led++) {
    pinMode(20 + led, INPUT);
    pinMode(led, OUTPUT);
  }    
}

void loop() {
  int a[] = {1, 1, 1, 1, 1, 1, 1, 1}, b[] = {0, 1, 0, 1, 0, 1, 0, 1}, c[] = {0, 0, 0, 0, 1, 1, 1, 1};
  int x, acum = 0, p;
  for(x = 0;x < 8;x++) {
    if (x == 0)
      p = 1;
    else
      p *= 2;
    if (digitalRead(22 + x) == 1) {
      acum += p;
    }
  }
  if (num == acum)
    for(led = 0;led < 8;led++)
      digitalWrite(2 + led, a[led]);
  else if (acum > num)
    for(led = 0;led < 8;led++)
      digitalWrite(2 + led, b[led]);
  else
    for(led = 0;led < 8;led++)
      digitalWrite(2 + led, c[led]);
}

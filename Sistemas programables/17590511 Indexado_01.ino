int pin;

void setup() {
  for (pin = 2;pin < 8;pin++) {
    pinMode(pin, OUTPUT);
    if (pin < 5)
      pinMode(pin + 20, INPUT);
  }
}

void loop() {
  int numero = 0, x, p;
  int cero[] = {0, 0, 1, 0, 1, 0},
  uno[] = {0, 0, 1, 0, 0, 1},
  dos[] = {1, 0, 0, 0, 1, 1},
  tres[] = {0, 0, 1, 1, 1, 1},
  cuatro[] = {0, 1, 0, 0, 0, 0},
  cinco[] = {0, 0, 0, 1, 1, 1},
  seis[] = {0, 1, 0, 1, 1, 1},
  siete[] = {1, 1, 1, 1, 1, 1};

  for(x = 0;x < 3;x++) {
    if (x == 0)
      p = 1;
    else
      p *= 2;
    if (digitalRead(22 + x) == 1) {
      numero += p;
    }
  }
  switch (numero) {
    case 0: imprimir(cero);
      break;
    case 1: imprimir(uno);
      break;
    case 2: imprimir(dos);
      break;
    case 3: imprimir(tres);
      break;
    case 4: imprimir(cuatro);
      break;
    case 5: imprimir(cinco);
      break;
    case 6: imprimir(seis);
      break;
    case 7: imprimir(siete);
      break;
  }
}

void imprimir(int i[]) {
  int in = 5;
  for (pin = 2; pin < 8;pin++, in--)
    digitalWrite(pin, i[in]);
}

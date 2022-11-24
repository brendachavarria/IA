int led;

void configuracion(int vec[6]) {
  for (led=0;led<6;led++)
    digitalWrite(led+2, vec[led]);
}

void setup() {
  for (led=2;led<=7;led++)
    pinMode(led, OUTPUT);
  pinMode(22, INPUT);
  pinMode(23, INPUT);
  pinMode(24, INPUT);
}

void loop() {
  int a[]={0,1,0,1,0,0};
  int b[]={1,0,0,1,0,0};
  int c[]={1,1,0,0,0,1};
  int d[]={1,1,1,1,0,0};
  int e[]={0,0,0,0,0,1};
  int f[]={0,0,0,1,1,1};
  int g[]={0,1,0,1,1,1};
  int h[]={1,1,1,1,1,1};
  int x,acum=0,p;
  for(x=0;x<3;x++) {
    if (x==0)
      p=1;
    else
      p*=2;
    if (digitalRead(22+x)==1) {
      acum+=p;
    }
  }
  switch(acum) {
    case 0:
      configuracion(a);
      break;
    case 1:
      configuracion(b);
      break;
    case 2:
      configuracion(c);
      break;
    case 3:
      configuracion(d);
      break;
    case 4:
      configuracion(e);
      break;
    case 5:
      configuracion(f);
      break;
    case 6:
      configuracion(g);
      break;
    case 7:
      configuracion(h);
  }
}

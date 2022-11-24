int led;

void configuracion(int vec[16][8], int x) {
  for (led=0;led<8;led++)
    digitalWrite(2+led, vec[x][led]);
}

void setup() {
  for(led=2;led<=9;led++)
    pinMode(led,OUTPUT);
  for(led=1;led<=4;led++)
    pinMode(21+led,INPUT);
}

void loop() {
  int a[16][8]={{1,1,1,1,1,1,0,0}, //3f
            {0,1,1,0,0,0,0,0},     //06
            {1,1,0,1,1,0,1,0},    //5b
            {1,1,1,1,0,0,1,0},    //4f
            {0,1,1,0,0,1,1,0},    //66
            {1,0,1,1,0,1,1,0},    //6d
            {1,0,1,1,1,1,1,0},    //7d
            {1,1,1,0,0,0,0,0},    //07
            {1,1,1,1,1,1,1,0},    //7f
            {1,1,1,0,0,1,1,0},    //67
            {1,1,1,0,1,1,1,0},    //77
            {0,0,1,1,1,1,1,0},    //7c
            {1,0,0,1,1,1,0,0},    //39
            {0,1,1,1,1,0,1,0},    //5e
            {1,0,0,1,1,1,1,0},    //79
            {1,0,0,0,1,1,1,0}};   //71
  int x,acum=0,p;
  for(x=0;x<8;x++) {
    if (x==0)
      p=1;
    else
      p*=2;
    if (digitalRead(22+x)==1) {
      acum+=p;
    }
  }
  configuracion(a,acum);
}

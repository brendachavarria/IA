#line 1 "C:/Users/Brenda/Dropbox/PC/Documents/7 semestre/2. Sistemas Programables/PRAC MICRO C/p1.c"
void main() {
 int led=1,ban=1;
 TRISB=0x00;
 do{
 PORTB=led;
 delay_ms (150);
 if(ban==1){
 led=led<<1;
 if(led>128){
 led=64;
 ban=0;
 }
 }
 else {
 led=led>>1;
 if(led<1){
 led=2;
 ban=1;
 }
 }
 }while(1);
}


_main:

;Mikro_01.c,2 :: 		void main() {
;Mikro_01.c,3 :: 		TRISB=0b00000000;   //=0;(Decimal) //=0x0; (Hexadecimal)
	CLRF       TRISB+0
;Mikro_01.c,4 :: 		do{
L_main0:
;Mikro_01.c,5 :: 		PORTB=Constante;
	MOVF       _Constante+0, 0
	MOVWF      PORTB+0
;Mikro_01.c,6 :: 		}while(1);
	GOTO       L_main0
;Mikro_01.c,7 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

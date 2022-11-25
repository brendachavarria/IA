
_main:

;Mikro_02.c,2 :: 		void main() {
;Mikro_02.c,3 :: 		TRISB=0b00000000;   //=0;(Decimal) //=0x0; (Hexadecimal)
	CLRF       TRISB+0
;Mikro_02.c,4 :: 		TRISA=0b00011111;
	MOVLW      31
	MOVWF      TRISA+0
;Mikro_02.c,5 :: 		do{
L_main0:
;Mikro_02.c,6 :: 		PORTB=PORTA;
	MOVF       PORTA+0, 0
	MOVWF      PORTB+0
;Mikro_02.c,7 :: 		}while(1);
	GOTO       L_main0
;Mikro_02.c,8 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

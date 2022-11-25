
_main:

;Mikro_Parpadeo.c,1 :: 		void main() {
;Mikro_Parpadeo.c,2 :: 		TRISB=0;
	CLRF       TRISB+0
;Mikro_Parpadeo.c,3 :: 		PORTB=0b00000000;
	CLRF       PORTB+0
;Mikro_Parpadeo.c,4 :: 		do{
L_main0:
;Mikro_Parpadeo.c,5 :: 		PORTB=0b00000001;
	MOVLW      1
	MOVWF      PORTB+0
;Mikro_Parpadeo.c,6 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;Mikro_Parpadeo.c,7 :: 		PORTB=0b00000000;
	CLRF       PORTB+0
;Mikro_Parpadeo.c,8 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
	NOP
;Mikro_Parpadeo.c,9 :: 		}while(1);
	GOTO       L_main0
;Mikro_Parpadeo.c,10 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

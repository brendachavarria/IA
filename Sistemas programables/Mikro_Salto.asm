
_main:

;Mikro_Salto.c,1 :: 		void main() {
;Mikro_Salto.c,2 :: 		int Numero=13;
	MOVLW      13
	MOVWF      main_Numero_L0+0
	MOVLW      0
	MOVWF      main_Numero_L0+1
;Mikro_Salto.c,3 :: 		TRISA=0b00011111;
	MOVLW      31
	MOVWF      TRISA+0
;Mikro_Salto.c,4 :: 		TRISB=0x00;
	CLRF       TRISB+0
;Mikro_Salto.c,5 :: 		do{
L_main0:
;Mikro_Salto.c,6 :: 		if(PORTA<Numero){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_Numero_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main7
	MOVF       main_Numero_L0+0, 0
	SUBWF      PORTA+0, 0
L__main7:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;Mikro_Salto.c,7 :: 		PORTB=0xF0;
	MOVLW      240
	MOVWF      PORTB+0
;Mikro_Salto.c,8 :: 		}else{
	GOTO       L_main4
L_main3:
;Mikro_Salto.c,9 :: 		if(PORTA>Numero){
	MOVLW      128
	XORWF      main_Numero_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main8
	MOVF       PORTA+0, 0
	SUBWF      main_Numero_L0+0, 0
L__main8:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;Mikro_Salto.c,10 :: 		PORTB=0b01010101;
	MOVLW      85
	MOVWF      PORTB+0
;Mikro_Salto.c,11 :: 		}
L_main5:
;Mikro_Salto.c,12 :: 		}
L_main4:
;Mikro_Salto.c,13 :: 		}while(1);
	GOTO       L_main0
;Mikro_Salto.c,14 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

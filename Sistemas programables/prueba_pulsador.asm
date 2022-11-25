
_main:

;prueba_pulsador.c,1 :: 		void main() {
;prueba_pulsador.c,2 :: 		TRISB=0;
	CLRF       TRISB+0
;prueba_pulsador.c,3 :: 		PORTB=0b00000000;
	CLRF       PORTB+0
;prueba_pulsador.c,4 :: 		TRISA.B0=0;
	BCF        TRISA+0, 0
;prueba_pulsador.c,5 :: 		PORTA.B0=0;
	BCF        PORTA+0, 0
;prueba_pulsador.c,7 :: 		do{
L_main0:
;prueba_pulsador.c,8 :: 		PORTB=0b00000000;
	CLRF       PORTB+0
;prueba_pulsador.c,9 :: 		Delay_ms(100);
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
;prueba_pulsador.c,10 :: 		PORTB=0b10000000;
	MOVLW      128
	MOVWF      PORTB+0
;prueba_pulsador.c,11 :: 		Delay_ms(100);
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
;prueba_pulsador.c,12 :: 		PORTB=0b11000000;
	MOVLW      192
	MOVWF      PORTB+0
;prueba_pulsador.c,13 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;prueba_pulsador.c,14 :: 		PORTB=0b11100000;
	MOVLW      224
	MOVWF      PORTB+0
;prueba_pulsador.c,15 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;prueba_pulsador.c,16 :: 		PORTB=0b11110000;
	MOVLW      240
	MOVWF      PORTB+0
;prueba_pulsador.c,17 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
	NOP
;prueba_pulsador.c,18 :: 		PORTB=0b11111000;
	MOVLW      248
	MOVWF      PORTB+0
;prueba_pulsador.c,19 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
	NOP
;prueba_pulsador.c,20 :: 		PORTB=0b11111100;
	MOVLW      252
	MOVWF      PORTB+0
;prueba_pulsador.c,21 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
	NOP
;prueba_pulsador.c,22 :: 		PORTB=0b11111110;
	MOVLW      254
	MOVWF      PORTB+0
;prueba_pulsador.c,23 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	NOP
	NOP
;prueba_pulsador.c,24 :: 		PORTB=0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;prueba_pulsador.c,25 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
	NOP
;prueba_pulsador.c,26 :: 		PORTB=0b01111111;
	MOVLW      127
	MOVWF      PORTB+0
;prueba_pulsador.c,27 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	NOP
	NOP
;prueba_pulsador.c,28 :: 		PORTB=0b00111111;
	MOVLW      63
	MOVWF      PORTB+0
;prueba_pulsador.c,29 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	NOP
	NOP
;prueba_pulsador.c,30 :: 		PORTB=0b00011111;
	MOVLW      31
	MOVWF      PORTB+0
;prueba_pulsador.c,31 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	NOP
	NOP
;prueba_pulsador.c,32 :: 		PORTB=0b00001111;
	MOVLW      15
	MOVWF      PORTB+0
;prueba_pulsador.c,33 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	NOP
	NOP
;prueba_pulsador.c,34 :: 		PORTB=0b00000111;
	MOVLW      7
	MOVWF      PORTB+0
;prueba_pulsador.c,35 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	NOP
	NOP
;prueba_pulsador.c,36 :: 		PORTB=0b00000011;
	MOVLW      3
	MOVWF      PORTB+0
;prueba_pulsador.c,37 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	NOP
	NOP
;prueba_pulsador.c,38 :: 		PORTB=0b00000001;
	MOVLW      1
	MOVWF      PORTB+0
;prueba_pulsador.c,39 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	NOP
	NOP
;prueba_pulsador.c,40 :: 		PORTB=0b00000000;
	CLRF       PORTB+0
;prueba_pulsador.c,41 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	NOP
	NOP
;prueba_pulsador.c,42 :: 		}while(PORTA.B0==0);
	BTFSS      PORTA+0, 0
	GOTO       L_main0
;prueba_pulsador.c,44 :: 		if(PORTA.B0==1){
	BTFSS      PORTA+0, 0
	GOTO       L_main20
;prueba_pulsador.c,45 :: 		do{
L_main21:
;prueba_pulsador.c,46 :: 		PORTB=0b00000001;
	MOVLW      1
	MOVWF      PORTB+0
;prueba_pulsador.c,47 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main24:
	DECFSZ     R13+0, 1
	GOTO       L_main24
	DECFSZ     R12+0, 1
	GOTO       L_main24
	NOP
	NOP
;prueba_pulsador.c,48 :: 		PORTB=0b00000011;
	MOVLW      3
	MOVWF      PORTB+0
;prueba_pulsador.c,49 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main25:
	DECFSZ     R13+0, 1
	GOTO       L_main25
	DECFSZ     R12+0, 1
	GOTO       L_main25
	NOP
	NOP
;prueba_pulsador.c,50 :: 		PORTB=0b00000111;
	MOVLW      7
	MOVWF      PORTB+0
;prueba_pulsador.c,51 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main26:
	DECFSZ     R13+0, 1
	GOTO       L_main26
	DECFSZ     R12+0, 1
	GOTO       L_main26
	NOP
	NOP
;prueba_pulsador.c,52 :: 		PORTB=0b00001111;
	MOVLW      15
	MOVWF      PORTB+0
;prueba_pulsador.c,53 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main27:
	DECFSZ     R13+0, 1
	GOTO       L_main27
	DECFSZ     R12+0, 1
	GOTO       L_main27
	NOP
	NOP
;prueba_pulsador.c,54 :: 		PORTB=0b00011111;
	MOVLW      31
	MOVWF      PORTB+0
;prueba_pulsador.c,55 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main28:
	DECFSZ     R13+0, 1
	GOTO       L_main28
	DECFSZ     R12+0, 1
	GOTO       L_main28
	NOP
	NOP
;prueba_pulsador.c,56 :: 		PORTB=0b00111111;
	MOVLW      63
	MOVWF      PORTB+0
;prueba_pulsador.c,57 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main29:
	DECFSZ     R13+0, 1
	GOTO       L_main29
	DECFSZ     R12+0, 1
	GOTO       L_main29
	NOP
	NOP
;prueba_pulsador.c,58 :: 		PORTB=0b01111111;
	MOVLW      127
	MOVWF      PORTB+0
;prueba_pulsador.c,59 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main30:
	DECFSZ     R13+0, 1
	GOTO       L_main30
	DECFSZ     R12+0, 1
	GOTO       L_main30
	NOP
	NOP
;prueba_pulsador.c,60 :: 		PORTB=0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;prueba_pulsador.c,61 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main31:
	DECFSZ     R13+0, 1
	GOTO       L_main31
	DECFSZ     R12+0, 1
	GOTO       L_main31
	NOP
	NOP
;prueba_pulsador.c,62 :: 		PORTB=0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;prueba_pulsador.c,63 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main32:
	DECFSZ     R13+0, 1
	GOTO       L_main32
	DECFSZ     R12+0, 1
	GOTO       L_main32
	NOP
	NOP
;prueba_pulsador.c,64 :: 		PORTB=0b11111110;
	MOVLW      254
	MOVWF      PORTB+0
;prueba_pulsador.c,65 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main33:
	DECFSZ     R13+0, 1
	GOTO       L_main33
	DECFSZ     R12+0, 1
	GOTO       L_main33
	NOP
	NOP
;prueba_pulsador.c,66 :: 		PORTB=0b11111100;
	MOVLW      252
	MOVWF      PORTB+0
;prueba_pulsador.c,67 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main34:
	DECFSZ     R13+0, 1
	GOTO       L_main34
	DECFSZ     R12+0, 1
	GOTO       L_main34
	NOP
	NOP
;prueba_pulsador.c,68 :: 		PORTB=0b11111000;
	MOVLW      248
	MOVWF      PORTB+0
;prueba_pulsador.c,69 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main35:
	DECFSZ     R13+0, 1
	GOTO       L_main35
	DECFSZ     R12+0, 1
	GOTO       L_main35
	NOP
	NOP
;prueba_pulsador.c,70 :: 		PORTB=0b11110000;
	MOVLW      240
	MOVWF      PORTB+0
;prueba_pulsador.c,71 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main36:
	DECFSZ     R13+0, 1
	GOTO       L_main36
	DECFSZ     R12+0, 1
	GOTO       L_main36
	NOP
	NOP
;prueba_pulsador.c,72 :: 		PORTB=0b11100000;
	MOVLW      224
	MOVWF      PORTB+0
;prueba_pulsador.c,73 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main37:
	DECFSZ     R13+0, 1
	GOTO       L_main37
	DECFSZ     R12+0, 1
	GOTO       L_main37
	NOP
	NOP
;prueba_pulsador.c,74 :: 		PORTB=0b11000000;
	MOVLW      192
	MOVWF      PORTB+0
;prueba_pulsador.c,75 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main38:
	DECFSZ     R13+0, 1
	GOTO       L_main38
	DECFSZ     R12+0, 1
	GOTO       L_main38
	NOP
	NOP
;prueba_pulsador.c,76 :: 		PORTB=0b10000000;
	MOVLW      128
	MOVWF      PORTB+0
;prueba_pulsador.c,77 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main39:
	DECFSZ     R13+0, 1
	GOTO       L_main39
	DECFSZ     R12+0, 1
	GOTO       L_main39
	NOP
	NOP
;prueba_pulsador.c,78 :: 		PORTB=0b00000000;
	CLRF       PORTB+0
;prueba_pulsador.c,79 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main40:
	DECFSZ     R13+0, 1
	GOTO       L_main40
	DECFSZ     R12+0, 1
	GOTO       L_main40
	NOP
	NOP
;prueba_pulsador.c,80 :: 		}while(PORTA.B0==1);
	BTFSC      PORTA+0, 0
	GOTO       L_main21
;prueba_pulsador.c,81 :: 		}
L_main20:
;prueba_pulsador.c,82 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

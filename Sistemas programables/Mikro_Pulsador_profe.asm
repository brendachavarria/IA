
_InicializaContador:

;Mikro_Pulsador_profe.c,2 :: 		void InicializaContador() {
;Mikro_Pulsador_profe.c,3 :: 		Contador = 0;
	CLRF       _Contador+0
	CLRF       _Contador+1
;Mikro_Pulsador_profe.c,4 :: 		}
L_end_InicializaContador:
	RETURN
; end of _InicializaContador

_Visualiza:

;Mikro_Pulsador_profe.c,6 :: 		void Visualiza() {
;Mikro_Pulsador_profe.c,7 :: 		if(Contador == 0){
	MOVLW      0
	XORWF      _Contador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Visualiza44
	MOVLW      0
	XORWF      _Contador+0, 0
L__Visualiza44:
	BTFSS      STATUS+0, 2
	GOTO       L_Visualiza0
;Mikro_Pulsador_profe.c,8 :: 		PORTB=0b000000001;
	MOVLW      1
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,9 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza1:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza1
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza1
	NOP
	NOP
;Mikro_Pulsador_profe.c,10 :: 		PORTB=0b000000011;
	MOVLW      3
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,11 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza2:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza2
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza2
	NOP
	NOP
;Mikro_Pulsador_profe.c,12 :: 		PORTB=0b000000111;
	MOVLW      7
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,13 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza3:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza3
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza3
	NOP
	NOP
;Mikro_Pulsador_profe.c,14 :: 		PORTB=0b000001111;
	MOVLW      15
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,15 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza4:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza4
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza4
	NOP
	NOP
;Mikro_Pulsador_profe.c,16 :: 		PORTB=0b000011111;
	MOVLW      31
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,17 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza5:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza5
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza5
	NOP
	NOP
;Mikro_Pulsador_profe.c,18 :: 		PORTB=0b000111111;
	MOVLW      63
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,19 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza6:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza6
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza6
	NOP
	NOP
;Mikro_Pulsador_profe.c,20 :: 		PORTB=0b001111111;
	MOVLW      127
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,21 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza7:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza7
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza7
	NOP
	NOP
;Mikro_Pulsador_profe.c,22 :: 		PORTB=0b011111111;
	MOVLW      255
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,23 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza8:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza8
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza8
	NOP
	NOP
;Mikro_Pulsador_profe.c,24 :: 		PORTB=0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,25 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza9:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza9
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza9
	NOP
	NOP
;Mikro_Pulsador_profe.c,26 :: 		PORTB=0b11111110;
	MOVLW      254
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,27 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza10:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza10
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza10
	NOP
	NOP
;Mikro_Pulsador_profe.c,28 :: 		PORTB=0b111111100;
	MOVLW      252
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,29 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza11:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza11
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza11
	NOP
	NOP
;Mikro_Pulsador_profe.c,30 :: 		PORTB=0b111111000;
	MOVLW      248
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,31 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza12:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza12
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza12
	NOP
	NOP
;Mikro_Pulsador_profe.c,32 :: 		PORTB=0b111110000;
	MOVLW      240
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,33 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza13:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza13
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza13
	NOP
	NOP
;Mikro_Pulsador_profe.c,34 :: 		PORTB=0b111100000;
	MOVLW      224
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,35 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza14:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza14
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza14
	NOP
	NOP
;Mikro_Pulsador_profe.c,36 :: 		PORTB=0b111000000;
	MOVLW      192
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,37 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza15:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza15
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza15
	NOP
	NOP
;Mikro_Pulsador_profe.c,38 :: 		PORTB=0b110000000;
	MOVLW      128
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,39 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza16:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza16
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza16
	NOP
	NOP
;Mikro_Pulsador_profe.c,40 :: 		PORTB=0b100000000;
	MOVLW      0
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,41 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza17:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza17
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza17
	NOP
	NOP
;Mikro_Pulsador_profe.c,42 :: 		PORTB=0b000000000;
	CLRF       PORTB+0
;Mikro_Pulsador_profe.c,43 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza18:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza18
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza18
	NOP
	NOP
;Mikro_Pulsador_profe.c,44 :: 		}
L_Visualiza0:
;Mikro_Pulsador_profe.c,45 :: 		}
L_end_Visualiza:
	RETURN
; end of _Visualiza

_Visualiza2:

;Mikro_Pulsador_profe.c,47 :: 		Visualiza2(){
;Mikro_Pulsador_profe.c,48 :: 		PORTB=0b10000000;
	MOVLW      128
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,49 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza219:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza219
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza219
	NOP
	NOP
;Mikro_Pulsador_profe.c,50 :: 		PORTB=0b110000000;
	MOVLW      128
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,51 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza220:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza220
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza220
	NOP
	NOP
;Mikro_Pulsador_profe.c,52 :: 		PORTB=0b111000000;
	MOVLW      192
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,53 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza221:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza221
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza221
	NOP
	NOP
;Mikro_Pulsador_profe.c,54 :: 		PORTB=0b111100000;
	MOVLW      224
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,55 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza222:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza222
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza222
	NOP
	NOP
;Mikro_Pulsador_profe.c,56 :: 		PORTB=0b111110000;
	MOVLW      240
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,57 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza223:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza223
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza223
	NOP
	NOP
;Mikro_Pulsador_profe.c,58 :: 		PORTB=0b111111000;
	MOVLW      248
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,59 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza224:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza224
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza224
	NOP
	NOP
;Mikro_Pulsador_profe.c,60 :: 		PORTB=0b111111100;
	MOVLW      252
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,61 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza225:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza225
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza225
	NOP
	NOP
;Mikro_Pulsador_profe.c,62 :: 		PORTB=0b111111110;
	MOVLW      254
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,63 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza226:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza226
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza226
	NOP
	NOP
;Mikro_Pulsador_profe.c,64 :: 		PORTB=0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,65 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza227:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza227
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza227
	NOP
	NOP
;Mikro_Pulsador_profe.c,66 :: 		PORTB=0b01111111;
	MOVLW      127
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,67 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza228:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza228
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza228
	NOP
	NOP
;Mikro_Pulsador_profe.c,68 :: 		PORTB=0b00111111;
	MOVLW      63
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,69 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza229:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza229
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza229
	NOP
	NOP
;Mikro_Pulsador_profe.c,70 :: 		PORTB=0b00011111;
	MOVLW      31
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,71 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza230:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza230
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza230
	NOP
	NOP
;Mikro_Pulsador_profe.c,72 :: 		PORTB=0b00001111;
	MOVLW      15
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,73 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza231:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza231
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza231
	NOP
	NOP
;Mikro_Pulsador_profe.c,74 :: 		PORTB=0b00000111;
	MOVLW      7
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,75 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza232:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza232
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza232
	NOP
	NOP
;Mikro_Pulsador_profe.c,76 :: 		PORTB=0b00000011;
	MOVLW      3
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,77 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza233:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza233
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza233
	NOP
	NOP
;Mikro_Pulsador_profe.c,78 :: 		PORTB=0b00000001;
	MOVLW      1
	MOVWF      PORTB+0
;Mikro_Pulsador_profe.c,79 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza234:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza234
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza234
	NOP
	NOP
;Mikro_Pulsador_profe.c,80 :: 		PORTB=0b00000000;
	CLRF       PORTB+0
;Mikro_Pulsador_profe.c,81 :: 		Delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_Visualiza235:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza235
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza235
	NOP
	NOP
;Mikro_Pulsador_profe.c,82 :: 		}
L_end_Visualiza2:
	RETURN
; end of _Visualiza2

_IncremetaVisualiza:

;Mikro_Pulsador_profe.c,84 :: 		void IncremetaVisualiza() {
;Mikro_Pulsador_profe.c,85 :: 		Contador++;
	INCF       _Contador+0, 1
	BTFSC      STATUS+0, 2
	INCF       _Contador+1, 1
;Mikro_Pulsador_profe.c,86 :: 		if (Contador>1)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _Contador+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__IncremetaVisualiza47
	MOVF       _Contador+0, 0
	SUBLW      1
L__IncremetaVisualiza47:
	BTFSC      STATUS+0, 0
	GOTO       L_IncremetaVisualiza36
;Mikro_Pulsador_profe.c,87 :: 		InicializaContador();
	CALL       _InicializaContador+0
L_IncremetaVisualiza36:
;Mikro_Pulsador_profe.c,88 :: 		Visualiza();
	CALL       _Visualiza+0
;Mikro_Pulsador_profe.c,89 :: 		}
L_end_IncremetaVisualiza:
	RETURN
; end of _IncremetaVisualiza

_main:

;Mikro_Pulsador_profe.c,91 :: 		void main() {
;Mikro_Pulsador_profe.c,92 :: 		TRISA = 0b00010000;
	MOVLW      16
	MOVWF      TRISA+0
;Mikro_Pulsador_profe.c,93 :: 		TRISB = 0;
	CLRF       TRISB+0
;Mikro_Pulsador_profe.c,94 :: 		InicializaContador();
	CALL       _InicializaContador+0
;Mikro_Pulsador_profe.c,95 :: 		Visualiza();
	CALL       _Visualiza+0
;Mikro_Pulsador_profe.c,96 :: 		do {
L_main37:
;Mikro_Pulsador_profe.c,97 :: 		if (PORTA.F4 == 1) {
	BTFSS      PORTA+0, 4
	GOTO       L_main40
;Mikro_Pulsador_profe.c,98 :: 		IncremetaVisualiza();
	CALL       _IncremetaVisualiza+0
;Mikro_Pulsador_profe.c,99 :: 		Visualiza();
	CALL       _Visualiza+0
;Mikro_Pulsador_profe.c,100 :: 		}else{
	GOTO       L_main41
L_main40:
;Mikro_Pulsador_profe.c,101 :: 		IncremetaVisualiza();
	CALL       _IncremetaVisualiza+0
;Mikro_Pulsador_profe.c,102 :: 		Visualiza2();
	CALL       _Visualiza2+0
;Mikro_Pulsador_profe.c,103 :: 		}
L_main41:
;Mikro_Pulsador_profe.c,104 :: 		}while(1);
	GOTO       L_main37
;Mikro_Pulsador_profe.c,105 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

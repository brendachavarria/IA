
_numero_a_7segmentos:

;display_7s.h,1 :: 		int numero_a_7segmentos (char n){
;display_7s.h,2 :: 		char dn[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x67};
	MOVLW      63
	MOVWF      numero_a_7segmentos_dn_L0+0
	MOVLW      6
	MOVWF      numero_a_7segmentos_dn_L0+1
	MOVLW      91
	MOVWF      numero_a_7segmentos_dn_L0+2
	MOVLW      79
	MOVWF      numero_a_7segmentos_dn_L0+3
	MOVLW      102
	MOVWF      numero_a_7segmentos_dn_L0+4
	MOVLW      109
	MOVWF      numero_a_7segmentos_dn_L0+5
	MOVLW      125
	MOVWF      numero_a_7segmentos_dn_L0+6
	MOVLW      7
	MOVWF      numero_a_7segmentos_dn_L0+7
	MOVLW      127
	MOVWF      numero_a_7segmentos_dn_L0+8
	MOVLW      103
	MOVWF      numero_a_7segmentos_dn_L0+9
;display_7s.h,3 :: 		return dn[n];
	MOVF       FARG_numero_a_7segmentos_n+0, 0
	ADDLW      numero_a_7segmentos_dn_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	CLRF       R0+1
;display_7s.h,4 :: 		}
L_end_numero_a_7segmentos:
	RETURN
; end of _numero_a_7segmentos

_ASCII_a_7Segmentos:

;display_7s.h,5 :: 		int ASCII_a_7Segmentos(char num)  {
;display_7s.h,9 :: 		0x3F,0x73,0x67,0x50,0x6B,0x78,0x1C,0x3E,0x1D,0x70,0x6E,0x49};
	MOVLW      ?ICSASCII_a_7Segmentos_DT_L0+0
	MOVWF      ___DoICPAddr+0
	MOVLW      hi_addr(?ICSASCII_a_7Segmentos_DT_L0+0)
	MOVWF      ___DoICPAddr+1
	MOVLW      ASCII_a_7Segmentos_DT_L0+0
	MOVWF      FSR
	MOVLW      48
	MOVWF      R0+0
	CALL       ___CC2DW+0
;display_7s.h,11 :: 		if(num>='+' && num <='Z'){
	MOVLW      43
	SUBWF      FARG_ASCII_a_7Segmentos_num+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_ASCII_a_7Segmentos2
	MOVF       FARG_ASCII_a_7Segmentos_num+0, 0
	SUBLW      90
	BTFSS      STATUS+0, 0
	GOTO       L_ASCII_a_7Segmentos2
L__ASCII_a_7Segmentos34:
;display_7s.h,12 :: 		return DT[num-43];
	MOVLW      43
	SUBWF      FARG_ASCII_a_7Segmentos_num+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVF       R0+0, 0
	ADDLW      ASCII_a_7Segmentos_DT_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_ASCII_a_7Segmentos
;display_7s.h,14 :: 		}
L_ASCII_a_7Segmentos2:
;display_7s.h,16 :: 		if(num== 'Ñ')
	MOVF       FARG_ASCII_a_7Segmentos_num+0, 0
	XORLW      209
	BTFSS      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos4
;display_7s.h,17 :: 		return 0x55;
	MOVLW      85
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
L_ASCII_a_7Segmentos4:
;display_7s.h,19 :: 		if(num == '°')
	MOVF       FARG_ASCII_a_7Segmentos_num+0, 0
	XORLW      176
	BTFSS      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos6
;display_7s.h,20 :: 		return 0x63;
	MOVLW      99
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
L_ASCII_a_7Segmentos6:
;display_7s.h,22 :: 		return 0x00;
	CLRF       R0+0
	CLRF       R0+1
;display_7s.h,24 :: 		}
L_end_ASCII_a_7Segmentos:
	RETURN
; end of _ASCII_a_7Segmentos

_InicializaContador:

;Mikro_prueba pulsador_84A.c,3 :: 		void InicializaContador() {
;Mikro_prueba pulsador_84A.c,4 :: 		Contador = 0;
	CLRF       _Contador+0
	CLRF       _Contador+1
;Mikro_prueba pulsador_84A.c,5 :: 		}
L_end_InicializaContador:
	RETURN
; end of _InicializaContador

_Visualiza:

;Mikro_prueba pulsador_84A.c,7 :: 		void Visualiza() {
;Mikro_prueba pulsador_84A.c,8 :: 		if(Contador == 0){
	MOVLW      0
	XORWF      _Contador+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Visualiza39
	MOVLW      0
	XORWF      _Contador+0, 0
L__Visualiza39:
	BTFSS      STATUS+0, 2
	GOTO       L_Visualiza8
;Mikro_prueba pulsador_84A.c,9 :: 		PORTB=0b000000001;
	MOVLW      1
	MOVWF      PORTB+0
;Mikro_prueba pulsador_84A.c,10 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Visualiza9:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza9
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza9
	DECFSZ     R11+0, 1
	GOTO       L_Visualiza9
	NOP
;Mikro_prueba pulsador_84A.c,11 :: 		PORTB=0b000000011;
	MOVLW      3
	MOVWF      PORTB+0
;Mikro_prueba pulsador_84A.c,12 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Visualiza10:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza10
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza10
	DECFSZ     R11+0, 1
	GOTO       L_Visualiza10
	NOP
;Mikro_prueba pulsador_84A.c,13 :: 		PORTB=0b000000111;
	MOVLW      7
	MOVWF      PORTB+0
;Mikro_prueba pulsador_84A.c,14 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Visualiza11:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza11
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza11
	DECFSZ     R11+0, 1
	GOTO       L_Visualiza11
	NOP
;Mikro_prueba pulsador_84A.c,15 :: 		PORTB=0b000001111;
	MOVLW      15
	MOVWF      PORTB+0
;Mikro_prueba pulsador_84A.c,16 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Visualiza12:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza12
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza12
	DECFSZ     R11+0, 1
	GOTO       L_Visualiza12
	NOP
;Mikro_prueba pulsador_84A.c,17 :: 		PORTB=0b000011111;
	MOVLW      31
	MOVWF      PORTB+0
;Mikro_prueba pulsador_84A.c,18 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Visualiza13:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza13
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza13
	DECFSZ     R11+0, 1
	GOTO       L_Visualiza13
	NOP
;Mikro_prueba pulsador_84A.c,19 :: 		PORTB=0b000111111;
	MOVLW      63
	MOVWF      PORTB+0
;Mikro_prueba pulsador_84A.c,20 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Visualiza14:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza14
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza14
	DECFSZ     R11+0, 1
	GOTO       L_Visualiza14
	NOP
;Mikro_prueba pulsador_84A.c,21 :: 		PORTB=0b001111111;
	MOVLW      127
	MOVWF      PORTB+0
;Mikro_prueba pulsador_84A.c,22 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Visualiza15:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza15
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza15
	DECFSZ     R11+0, 1
	GOTO       L_Visualiza15
	NOP
;Mikro_prueba pulsador_84A.c,23 :: 		PORTB=0b011111111;
	MOVLW      255
	MOVWF      PORTB+0
;Mikro_prueba pulsador_84A.c,24 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Visualiza16:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza16
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza16
	DECFSZ     R11+0, 1
	GOTO       L_Visualiza16
	NOP
;Mikro_prueba pulsador_84A.c,25 :: 		PORTB=0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;Mikro_prueba pulsador_84A.c,26 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Visualiza17:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza17
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza17
	DECFSZ     R11+0, 1
	GOTO       L_Visualiza17
	NOP
;Mikro_prueba pulsador_84A.c,27 :: 		PORTB=0b00000000;
	CLRF       PORTB+0
;Mikro_prueba pulsador_84A.c,28 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Visualiza18:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza18
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza18
	DECFSZ     R11+0, 1
	GOTO       L_Visualiza18
	NOP
;Mikro_prueba pulsador_84A.c,30 :: 		}
L_Visualiza8:
;Mikro_prueba pulsador_84A.c,31 :: 		}
L_end_Visualiza:
	RETURN
; end of _Visualiza

_Visualiza2:

;Mikro_prueba pulsador_84A.c,33 :: 		Visualiza2(){
;Mikro_prueba pulsador_84A.c,34 :: 		PORTB=0b10000000;
	MOVLW      128
	MOVWF      PORTB+0
;Mikro_prueba pulsador_84A.c,35 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Visualiza219:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza219
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza219
	DECFSZ     R11+0, 1
	GOTO       L_Visualiza219
	NOP
;Mikro_prueba pulsador_84A.c,36 :: 		PORTB=0b110000000;
	MOVLW      128
	MOVWF      PORTB+0
;Mikro_prueba pulsador_84A.c,37 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Visualiza220:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza220
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza220
	DECFSZ     R11+0, 1
	GOTO       L_Visualiza220
	NOP
;Mikro_prueba pulsador_84A.c,38 :: 		PORTB=0b111000000;
	MOVLW      192
	MOVWF      PORTB+0
;Mikro_prueba pulsador_84A.c,39 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Visualiza221:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza221
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza221
	DECFSZ     R11+0, 1
	GOTO       L_Visualiza221
	NOP
;Mikro_prueba pulsador_84A.c,40 :: 		PORTB=0b111100000;
	MOVLW      224
	MOVWF      PORTB+0
;Mikro_prueba pulsador_84A.c,41 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Visualiza222:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza222
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza222
	DECFSZ     R11+0, 1
	GOTO       L_Visualiza222
	NOP
;Mikro_prueba pulsador_84A.c,42 :: 		PORTB=0b111110000;
	MOVLW      240
	MOVWF      PORTB+0
;Mikro_prueba pulsador_84A.c,43 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Visualiza223:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza223
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza223
	DECFSZ     R11+0, 1
	GOTO       L_Visualiza223
	NOP
;Mikro_prueba pulsador_84A.c,44 :: 		PORTB=0b111111000;
	MOVLW      248
	MOVWF      PORTB+0
;Mikro_prueba pulsador_84A.c,45 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Visualiza224:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza224
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza224
	DECFSZ     R11+0, 1
	GOTO       L_Visualiza224
	NOP
;Mikro_prueba pulsador_84A.c,46 :: 		PORTB=0b111111100;
	MOVLW      252
	MOVWF      PORTB+0
;Mikro_prueba pulsador_84A.c,47 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Visualiza225:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza225
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza225
	DECFSZ     R11+0, 1
	GOTO       L_Visualiza225
	NOP
;Mikro_prueba pulsador_84A.c,48 :: 		PORTB=0b111111110;
	MOVLW      254
	MOVWF      PORTB+0
;Mikro_prueba pulsador_84A.c,49 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Visualiza226:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza226
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza226
	DECFSZ     R11+0, 1
	GOTO       L_Visualiza226
	NOP
;Mikro_prueba pulsador_84A.c,50 :: 		PORTB=0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;Mikro_prueba pulsador_84A.c,51 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_Visualiza227:
	DECFSZ     R13+0, 1
	GOTO       L_Visualiza227
	DECFSZ     R12+0, 1
	GOTO       L_Visualiza227
	DECFSZ     R11+0, 1
	GOTO       L_Visualiza227
	NOP
;Mikro_prueba pulsador_84A.c,52 :: 		}
L_end_Visualiza2:
	RETURN
; end of _Visualiza2

_IncremetaVisualiza:

;Mikro_prueba pulsador_84A.c,54 :: 		void IncremetaVisualiza() {
;Mikro_prueba pulsador_84A.c,55 :: 		Contador++;
	INCF       _Contador+0, 1
	BTFSC      STATUS+0, 2
	INCF       _Contador+1, 1
;Mikro_prueba pulsador_84A.c,56 :: 		if (Contador>1)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _Contador+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__IncremetaVisualiza42
	MOVF       _Contador+0, 0
	SUBLW      1
L__IncremetaVisualiza42:
	BTFSC      STATUS+0, 0
	GOTO       L_IncremetaVisualiza28
;Mikro_prueba pulsador_84A.c,57 :: 		InicializaContador();
	CALL       _InicializaContador+0
L_IncremetaVisualiza28:
;Mikro_prueba pulsador_84A.c,58 :: 		Visualiza();
	CALL       _Visualiza+0
;Mikro_prueba pulsador_84A.c,59 :: 		}
L_end_IncremetaVisualiza:
	RETURN
; end of _IncremetaVisualiza

_main:

;Mikro_prueba pulsador_84A.c,61 :: 		void main() {
;Mikro_prueba pulsador_84A.c,62 :: 		TRISA = 0b00010000;
	MOVLW      16
	MOVWF      TRISA+0
;Mikro_prueba pulsador_84A.c,63 :: 		TRISB = 0;
	CLRF       TRISB+0
;Mikro_prueba pulsador_84A.c,64 :: 		InicializaContador();
	CALL       _InicializaContador+0
;Mikro_prueba pulsador_84A.c,65 :: 		Visualiza();
	CALL       _Visualiza+0
;Mikro_prueba pulsador_84A.c,66 :: 		do {
L_main29:
;Mikro_prueba pulsador_84A.c,67 :: 		if (PORTA.F4 == 1) {
	BTFSS      PORTA+0, 4
	GOTO       L_main32
;Mikro_prueba pulsador_84A.c,68 :: 		IncremetaVisualiza();
	CALL       _IncremetaVisualiza+0
;Mikro_prueba pulsador_84A.c,69 :: 		Visualiza();
	CALL       _Visualiza+0
;Mikro_prueba pulsador_84A.c,70 :: 		}else{
	GOTO       L_main33
L_main32:
;Mikro_prueba pulsador_84A.c,71 :: 		IncremetaVisualiza();
	CALL       _IncremetaVisualiza+0
;Mikro_prueba pulsador_84A.c,72 :: 		Visualiza2();
	CALL       _Visualiza2+0
;Mikro_prueba pulsador_84A.c,73 :: 		}
L_main33:
;Mikro_prueba pulsador_84A.c,74 :: 		}while(1);
	GOTO       L_main29
;Mikro_prueba pulsador_84A.c,75 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

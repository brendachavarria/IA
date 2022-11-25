
_ascii_a_7segmentos:

;display_7s.h,1 :: 		char ascii_a_7segmentos (char car) {
;display_7s.h,5 :: 		0x3F,0x73,0x67,0x50,0x6D,0x78,0x1C,0x3E,0x1D,0x70,0x6E,0x49};
	MOVLW      ?ICSascii_a_7segmentos_dato_L0+0
	MOVWF      ___DoICPAddr+0
	MOVLW      hi_addr(?ICSascii_a_7segmentos_dato_L0+0)
	MOVWF      ___DoICPAddr+1
	MOVLW      ascii_a_7segmentos_dato_L0+0
	MOVWF      FSR
	MOVLW      48
	MOVWF      R0+0
	CALL       ___CC2DW+0
;display_7s.h,6 :: 		if (car>='+' && car<='Z'){
	MOVLW      43
	SUBWF      FARG_ascii_a_7segmentos_car+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_ascii_a_7segmentos2
	MOVF       FARG_ascii_a_7segmentos_car+0, 0
	SUBLW      90
	BTFSS      STATUS+0, 0
	GOTO       L_ascii_a_7segmentos2
L__ascii_a_7segmentos16:
;display_7s.h,7 :: 		return dato[car-43];
	MOVLW      43
	SUBWF      FARG_ascii_a_7segmentos_car+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVF       R0+0, 0
	ADDLW      ascii_a_7segmentos_dato_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	GOTO       L_end_ascii_a_7segmentos
;display_7s.h,8 :: 		}
L_ascii_a_7segmentos2:
;display_7s.h,10 :: 		if (car=='Ñ')
	MOVF       FARG_ascii_a_7segmentos_car+0, 0
	XORLW      209
	BTFSS      STATUS+0, 2
	GOTO       L_ascii_a_7segmentos4
;display_7s.h,11 :: 		return 0x55;
	MOVLW      85
	MOVWF      R0+0
	GOTO       L_end_ascii_a_7segmentos
L_ascii_a_7segmentos4:
;display_7s.h,13 :: 		if (car=='°')
	MOVF       FARG_ascii_a_7segmentos_car+0, 0
	XORLW      176
	BTFSS      STATUS+0, 2
	GOTO       L_ascii_a_7segmentos6
;display_7s.h,14 :: 		return 0x63;
	MOVLW      99
	MOVWF      R0+0
	GOTO       L_end_ascii_a_7segmentos
L_ascii_a_7segmentos6:
;display_7s.h,16 :: 		return 0x00;
	CLRF       R0+0
;display_7s.h,17 :: 		}
L_end_ascii_a_7segmentos:
	RETURN
; end of _ascii_a_7segmentos

_InicializaContador:

;Mikro_Pulsador01_84A.c,3 :: 		void InicializaContador(void){
;Mikro_Pulsador01_84A.c,4 :: 		Contador=0;
	CLRF       _Contador+0
;Mikro_Pulsador01_84A.c,5 :: 		}
L_end_InicializaContador:
	RETURN
; end of _InicializaContador

_Visualiza:

;Mikro_Pulsador01_84A.c,6 :: 		void Visualiza (void){
;Mikro_Pulsador01_84A.c,7 :: 		PORTB=ascii_a_7segmentos(Contador);
	MOVF       _Contador+0, 0
	MOVWF      FARG_ascii_a_7segmentos_car+0
	CALL       _ascii_a_7segmentos+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Mikro_Pulsador01_84A.c,8 :: 		}
L_end_Visualiza:
	RETURN
; end of _Visualiza

_IncrementaVisualiza:

;Mikro_Pulsador01_84A.c,9 :: 		void IncrementaVisualiza(){
;Mikro_Pulsador01_84A.c,10 :: 		Contador++;
	INCF       _Contador+0, 1
;Mikro_Pulsador01_84A.c,11 :: 		if(Contador>9)
	MOVF       _Contador+0, 0
	SUBLW      9
	BTFSC      STATUS+0, 0
	GOTO       L_IncrementaVisualiza8
;Mikro_Pulsador01_84A.c,12 :: 		InicializaContador();
	CALL       _InicializaContador+0
L_IncrementaVisualiza8:
;Mikro_Pulsador01_84A.c,13 :: 		Visualiza();
	CALL       _Visualiza+0
;Mikro_Pulsador01_84A.c,14 :: 		}
L_end_IncrementaVisualiza:
	RETURN
; end of _IncrementaVisualiza

_main:

;Mikro_Pulsador01_84A.c,16 :: 		void main() {
;Mikro_Pulsador01_84A.c,17 :: 		TRISA=0b00011111;
	MOVLW      31
	MOVWF      TRISA+0
;Mikro_Pulsador01_84A.c,18 :: 		TRISB=0;
	CLRF       TRISB+0
;Mikro_Pulsador01_84A.c,19 :: 		InicializaContador();
	CALL       _InicializaContador+0
;Mikro_Pulsador01_84A.c,20 :: 		visualiza();
	CALL       _Visualiza+0
;Mikro_Pulsador01_84A.c,21 :: 		do{
L_main9:
;Mikro_Pulsador01_84A.c,22 :: 		if(PORTA==1){
	MOVF       PORTA+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main12
;Mikro_Pulsador01_84A.c,23 :: 		Delay_ms (20);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	NOP
;Mikro_Pulsador01_84A.c,25 :: 		IncrementaVisualiza();
	CALL       _IncrementaVisualiza+0
;Mikro_Pulsador01_84A.c,26 :: 		while (PORTA==1);
L_main14:
	MOVF       PORTA+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main15
	GOTO       L_main14
L_main15:
;Mikro_Pulsador01_84A.c,28 :: 		}
L_main12:
;Mikro_Pulsador01_84A.c,29 :: 		}while(1);
	GOTO       L_main9
;Mikro_Pulsador01_84A.c,30 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

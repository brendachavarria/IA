
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
L__ASCII_a_7Segmentos16:
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

_Visualiza:

;Mikro_Pulsador_01_84A.c,4 :: 		void Visualiza(){
;Mikro_Pulsador_01_84A.c,5 :: 		PORTB = numero_a_7Segmentos(Contador);
	MOVF       _Contador+0, 0
	MOVWF      FARG_numero_a_7segmentos_n+0
	CALL       _numero_a_7segmentos+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Mikro_Pulsador_01_84A.c,6 :: 		}
L_end_Visualiza:
	RETURN
; end of _Visualiza

_InicializaContador:

;Mikro_Pulsador_01_84A.c,8 :: 		void InicializaContador(void){
;Mikro_Pulsador_01_84A.c,9 :: 		Contador =0;
	CLRF       _Contador+0
;Mikro_Pulsador_01_84A.c,10 :: 		}
L_end_InicializaContador:
	RETURN
; end of _InicializaContador

_IncrementaVisualiza:

;Mikro_Pulsador_01_84A.c,12 :: 		void IncrementaVisualiza () {
;Mikro_Pulsador_01_84A.c,13 :: 		Contador++;
	INCF       _Contador+0, 1
;Mikro_Pulsador_01_84A.c,14 :: 		if (Contador>9){
	MOVF       _Contador+0, 0
	SUBLW      9
	BTFSC      STATUS+0, 0
	GOTO       L_IncrementaVisualiza8
;Mikro_Pulsador_01_84A.c,15 :: 		InicializaContador();
	CALL       _InicializaContador+0
;Mikro_Pulsador_01_84A.c,16 :: 		}
L_IncrementaVisualiza8:
;Mikro_Pulsador_01_84A.c,17 :: 		Visualiza();
	CALL       _Visualiza+0
;Mikro_Pulsador_01_84A.c,18 :: 		}
L_end_IncrementaVisualiza:
	RETURN
; end of _IncrementaVisualiza

_main:

;Mikro_Pulsador_01_84A.c,20 :: 		void main() {
;Mikro_Pulsador_01_84A.c,21 :: 		TRISA=0b00010000;
	MOVLW      16
	MOVWF      TRISA+0
;Mikro_Pulsador_01_84A.c,22 :: 		TRISB=0;
	CLRF       TRISB+0
;Mikro_Pulsador_01_84A.c,23 :: 		InicializaContador();
	CALL       _InicializaContador+0
;Mikro_Pulsador_01_84A.c,24 :: 		Visualiza();
	CALL       _Visualiza+0
;Mikro_Pulsador_01_84A.c,25 :: 		do{
L_main9:
;Mikro_Pulsador_01_84A.c,26 :: 		if(PORTA.B4 == 1){
	BTFSS      PORTA+0, 4
	GOTO       L_main12
;Mikro_Pulsador_01_84A.c,27 :: 		Delay_ms(20);
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
;Mikro_Pulsador_01_84A.c,28 :: 		IncrementaVisualiza();
	CALL       _IncrementaVisualiza+0
;Mikro_Pulsador_01_84A.c,29 :: 		while(PORTA.B4 == 1);
L_main14:
	BTFSS      PORTA+0, 4
	GOTO       L_main15
	GOTO       L_main14
L_main15:
;Mikro_Pulsador_01_84A.c,30 :: 		}
L_main12:
;Mikro_Pulsador_01_84A.c,31 :: 		}while(1);
	GOTO       L_main9
;Mikro_Pulsador_01_84A.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

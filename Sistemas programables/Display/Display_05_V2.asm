
_ASCII_a_7Segmentos:

;display_7s.h,1 :: 		int ASCII_a_7Segmentos(char c) {
;display_7s.h,2 :: 		char dt [] = {0x46, 0x04, 0x40, 0x80, 0x00, 0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x67, 0x41, 0x88, 0x00, 0x48, 0x00, 0x00, 0x00, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71, 0x6F, 0x76, 0x19, 0x1E, 0x7A, 0x38, 0x37, 0x54, 0x3F, 0x73, 0x67, 0x50, 0x6D, 0x78, 0x1C, 0x3E, 0x1D, 0x70, 0x6E, 0x49};
	MOVLW      ?ICSASCII_a_7Segmentos_dt_L0+0
	MOVWF      ___DoICPAddr+0
	MOVLW      hi_addr(?ICSASCII_a_7Segmentos_dt_L0+0)
	MOVWF      ___DoICPAddr+1
	MOVLW      ASCII_a_7Segmentos_dt_L0+0
	MOVWF      FSR
	MOVLW      48
	MOVWF      R0+0
	CALL       ___CC2DW+0
;display_7s.h,3 :: 		if (c >= '+' && c <= 'Z')
	MOVLW      43
	SUBWF      FARG_ASCII_a_7Segmentos_c+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_ASCII_a_7Segmentos2
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	SUBLW      90
	BTFSS      STATUS+0, 0
	GOTO       L_ASCII_a_7Segmentos2
L__ASCII_a_7Segmentos14:
;display_7s.h,4 :: 		return dt[c - 43];
	MOVLW      43
	SUBWF      FARG_ASCII_a_7Segmentos_c+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVF       R0+0, 0
	ADDLW      ASCII_a_7Segmentos_dt_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	GOTO       L_end_ASCII_a_7Segmentos
L_ASCII_a_7Segmentos2:
;display_7s.h,5 :: 		else if (c == 'Ñ')
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      209
	BTFSS      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos4
;display_7s.h,6 :: 		return 0x55;
	MOVLW      85
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
L_ASCII_a_7Segmentos4:
;display_7s.h,7 :: 		else if (c == '°')
	MOVF       FARG_ASCII_a_7Segmentos_c+0, 0
	XORLW      176
	BTFSS      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos6
;display_7s.h,8 :: 		return 0x63;
	MOVLW      99
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
L_ASCII_a_7Segmentos6:
;display_7s.h,10 :: 		return 0x00;
	CLRF       R0+0
	CLRF       R0+1
;display_7s.h,11 :: 		}
L_end_ASCII_a_7Segmentos:
	RETURN
; end of _ASCII_a_7Segmentos

_main:

;Display_05_V2.c,3 :: 		void main() {
;Display_05_V2.c,4 :: 		char Caracter = 43;
	MOVLW      43
	MOVWF      main_Caracter_L0+0
;Display_05_V2.c,5 :: 		TRISB = 0;
	CLRF       TRISB+0
;Display_05_V2.c,6 :: 		do {
L_main8:
;Display_05_V2.c,7 :: 		PORTB = ASCII_a_7Segmentos(Caracter);
	MOVF       main_Caracter_L0+0, 0
	MOVWF      FARG_ASCII_a_7Segmentos_c+0
	CALL       _ASCII_a_7Segmentos+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Display_05_V2.c,8 :: 		Delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
;Display_05_V2.c,9 :: 		Caracter++;
	INCF       main_Caracter_L0+0, 1
;Display_05_V2.c,10 :: 		if (Caracter > 90) {
	MOVF       main_Caracter_L0+0, 0
	SUBLW      90
	BTFSC      STATUS+0, 0
	GOTO       L_main12
;Display_05_V2.c,11 :: 		Caracter = 43;
	MOVLW      43
	MOVWF      main_Caracter_L0+0
;Display_05_V2.c,12 :: 		PORTB = ASCII_a_7Segmentos('Ñ');
	MOVLW      209
	MOVWF      FARG_ASCII_a_7Segmentos_c+0
	CALL       _ASCII_a_7Segmentos+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Display_05_V2.c,13 :: 		Delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	DECFSZ     R11+0, 1
	GOTO       L_main13
	NOP
;Display_05_V2.c,14 :: 		PORTB = ASCII_a_7Segmentos('°');
	MOVLW      176
	MOVWF      FARG_ASCII_a_7Segmentos_c+0
	CALL       _ASCII_a_7Segmentos+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Display_05_V2.c,15 :: 		}
L_main12:
;Display_05_V2.c,16 :: 		}while(1);
	GOTO       L_main8
;Display_05_V2.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

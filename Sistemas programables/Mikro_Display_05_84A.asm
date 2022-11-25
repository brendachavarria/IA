
_ASCII_a_7Segmentos:

;display_7s.h,1 :: 		int ASCII_a_7Segmentos(char num)  {
;display_7s.h,5 :: 		0x3F,0x73,0x67,0x50,0x6B,0x78,0x1C,0x3E,0x1D,0x70,0x6E,0x49};
	MOVLW      ?ICSASCII_a_7Segmentos_DT_L0+0
	MOVWF      ___DoICPAddr+0
	MOVLW      hi_addr(?ICSASCII_a_7Segmentos_DT_L0+0)
	MOVWF      ___DoICPAddr+1
	MOVLW      ASCII_a_7Segmentos_DT_L0+0
	MOVWF      FSR
	MOVLW      48
	MOVWF      R0+0
	CALL       ___CC2DW+0
;display_7s.h,7 :: 		if(num>='+' && num <='Z'){
	MOVLW      43
	SUBWF      FARG_ASCII_a_7Segmentos_num+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_ASCII_a_7Segmentos2
	MOVF       FARG_ASCII_a_7Segmentos_num+0, 0
	SUBLW      90
	BTFSS      STATUS+0, 0
	GOTO       L_ASCII_a_7Segmentos2
L__ASCII_a_7Segmentos11:
;display_7s.h,8 :: 		return DT[num-43];
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
;display_7s.h,10 :: 		}
L_ASCII_a_7Segmentos2:
;display_7s.h,12 :: 		if(num== 'Ñ')
	MOVF       FARG_ASCII_a_7Segmentos_num+0, 0
	XORLW      209
	BTFSS      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos4
;display_7s.h,13 :: 		return 0x55;
	MOVLW      85
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
L_ASCII_a_7Segmentos4:
;display_7s.h,15 :: 		if(num == '°')
	MOVF       FARG_ASCII_a_7Segmentos_num+0, 0
	XORLW      176
	BTFSS      STATUS+0, 2
	GOTO       L_ASCII_a_7Segmentos6
;display_7s.h,16 :: 		return 0x63;
	MOVLW      99
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_ASCII_a_7Segmentos
L_ASCII_a_7Segmentos6:
;display_7s.h,18 :: 		return 0x00;
	CLRF       R0+0
	CLRF       R0+1
;display_7s.h,20 :: 		}
L_end_ASCII_a_7Segmentos:
	RETURN
; end of _ASCII_a_7Segmentos

_main:

;Mikro_Display_05_84A.c,3 :: 		void main() {
;Mikro_Display_05_84A.c,4 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;Mikro_Display_05_84A.c,5 :: 		do{
L_main8:
;Mikro_Display_05_84A.c,6 :: 		PORTB = ASCII_a_7Segmentos(Caracter);
	MOVF       _Caracter+0, 0
	MOVWF      FARG_ASCII_a_7Segmentos_num+0
	CALL       _ASCII_a_7Segmentos+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Mikro_Display_05_84A.c,7 :: 		}while(1);
	GOTO       L_main8
;Mikro_Display_05_84A.c,8 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

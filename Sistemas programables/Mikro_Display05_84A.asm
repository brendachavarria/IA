
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
L__ascii_a_7segmentos11:
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

_main:

;Mikro_Display05_84A.c,3 :: 		void main() {
;Mikro_Display05_84A.c,4 :: 		TRISB=0;
	CLRF       TRISB+0
;Mikro_Display05_84A.c,5 :: 		do{
L_main8:
;Mikro_Display05_84A.c,6 :: 		PORTB=ascii_a_7Segmentos(Caracter);
	MOVF       _Caracter+0, 0
	MOVWF      FARG_ascii_a_7segmentos_car+0
	CALL       _ascii_a_7segmentos+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Mikro_Display05_84A.c,7 :: 		}while(1);
	GOTO       L_main8
;Mikro_Display05_84A.c,8 :: 		}
L_end_main:
	GOTO       $+0
; end of _main


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
L__ASCII_a_7Segmentos29:
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

_Binario_a_7Segmentos:

;Mikro_Display_01_84A.c,2 :: 		int Binario_a_7Segmentos(int valor){
;Mikro_Display_01_84A.c,3 :: 		switch(valor){
	GOTO       L_Binario_a_7Segmentos8
;Mikro_Display_01_84A.c,4 :: 		case 0: return 0x3F;
L_Binario_a_7Segmentos10:
	MOVLW      63
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Binario_a_7Segmentos
;Mikro_Display_01_84A.c,5 :: 		case 1: return 0x06;
L_Binario_a_7Segmentos11:
	MOVLW      6
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Binario_a_7Segmentos
;Mikro_Display_01_84A.c,6 :: 		case 2: return 0x5B;
L_Binario_a_7Segmentos12:
	MOVLW      91
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Binario_a_7Segmentos
;Mikro_Display_01_84A.c,7 :: 		case 3: return 0x4F;
L_Binario_a_7Segmentos13:
	MOVLW      79
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Binario_a_7Segmentos
;Mikro_Display_01_84A.c,8 :: 		case 4: return 0x66;
L_Binario_a_7Segmentos14:
	MOVLW      102
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Binario_a_7Segmentos
;Mikro_Display_01_84A.c,9 :: 		case 5: return 0x6D;
L_Binario_a_7Segmentos15:
	MOVLW      109
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Binario_a_7Segmentos
;Mikro_Display_01_84A.c,10 :: 		case 6: return 0x7D;
L_Binario_a_7Segmentos16:
	MOVLW      125
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Binario_a_7Segmentos
;Mikro_Display_01_84A.c,11 :: 		case 7: return 0x07;
L_Binario_a_7Segmentos17:
	MOVLW      7
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Binario_a_7Segmentos
;Mikro_Display_01_84A.c,12 :: 		case 8: return 0x7F;
L_Binario_a_7Segmentos18:
	MOVLW      127
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Binario_a_7Segmentos
;Mikro_Display_01_84A.c,13 :: 		case 9: return 0x67;
L_Binario_a_7Segmentos19:
	MOVLW      103
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Binario_a_7Segmentos
;Mikro_Display_01_84A.c,14 :: 		case 10: return 0x77;
L_Binario_a_7Segmentos20:
	MOVLW      119
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Binario_a_7Segmentos
;Mikro_Display_01_84A.c,15 :: 		case 11: return 0x7C;
L_Binario_a_7Segmentos21:
	MOVLW      124
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Binario_a_7Segmentos
;Mikro_Display_01_84A.c,16 :: 		case 12: return 0x39;
L_Binario_a_7Segmentos22:
	MOVLW      57
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Binario_a_7Segmentos
;Mikro_Display_01_84A.c,17 :: 		case 13: return 0x5E;
L_Binario_a_7Segmentos23:
	MOVLW      94
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Binario_a_7Segmentos
;Mikro_Display_01_84A.c,18 :: 		case 14: return 0x79;
L_Binario_a_7Segmentos24:
	MOVLW      121
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Binario_a_7Segmentos
;Mikro_Display_01_84A.c,19 :: 		case 15: return 0x71;
L_Binario_a_7Segmentos25:
	MOVLW      113
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_Binario_a_7Segmentos
;Mikro_Display_01_84A.c,20 :: 		}
L_Binario_a_7Segmentos8:
	MOVLW      0
	XORWF      FARG_Binario_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Binario_a_7Segmentos32
	MOVLW      0
	XORWF      FARG_Binario_a_7Segmentos_valor+0, 0
L__Binario_a_7Segmentos32:
	BTFSC      STATUS+0, 2
	GOTO       L_Binario_a_7Segmentos10
	MOVLW      0
	XORWF      FARG_Binario_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Binario_a_7Segmentos33
	MOVLW      1
	XORWF      FARG_Binario_a_7Segmentos_valor+0, 0
L__Binario_a_7Segmentos33:
	BTFSC      STATUS+0, 2
	GOTO       L_Binario_a_7Segmentos11
	MOVLW      0
	XORWF      FARG_Binario_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Binario_a_7Segmentos34
	MOVLW      2
	XORWF      FARG_Binario_a_7Segmentos_valor+0, 0
L__Binario_a_7Segmentos34:
	BTFSC      STATUS+0, 2
	GOTO       L_Binario_a_7Segmentos12
	MOVLW      0
	XORWF      FARG_Binario_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Binario_a_7Segmentos35
	MOVLW      3
	XORWF      FARG_Binario_a_7Segmentos_valor+0, 0
L__Binario_a_7Segmentos35:
	BTFSC      STATUS+0, 2
	GOTO       L_Binario_a_7Segmentos13
	MOVLW      0
	XORWF      FARG_Binario_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Binario_a_7Segmentos36
	MOVLW      4
	XORWF      FARG_Binario_a_7Segmentos_valor+0, 0
L__Binario_a_7Segmentos36:
	BTFSC      STATUS+0, 2
	GOTO       L_Binario_a_7Segmentos14
	MOVLW      0
	XORWF      FARG_Binario_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Binario_a_7Segmentos37
	MOVLW      5
	XORWF      FARG_Binario_a_7Segmentos_valor+0, 0
L__Binario_a_7Segmentos37:
	BTFSC      STATUS+0, 2
	GOTO       L_Binario_a_7Segmentos15
	MOVLW      0
	XORWF      FARG_Binario_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Binario_a_7Segmentos38
	MOVLW      6
	XORWF      FARG_Binario_a_7Segmentos_valor+0, 0
L__Binario_a_7Segmentos38:
	BTFSC      STATUS+0, 2
	GOTO       L_Binario_a_7Segmentos16
	MOVLW      0
	XORWF      FARG_Binario_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Binario_a_7Segmentos39
	MOVLW      7
	XORWF      FARG_Binario_a_7Segmentos_valor+0, 0
L__Binario_a_7Segmentos39:
	BTFSC      STATUS+0, 2
	GOTO       L_Binario_a_7Segmentos17
	MOVLW      0
	XORWF      FARG_Binario_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Binario_a_7Segmentos40
	MOVLW      8
	XORWF      FARG_Binario_a_7Segmentos_valor+0, 0
L__Binario_a_7Segmentos40:
	BTFSC      STATUS+0, 2
	GOTO       L_Binario_a_7Segmentos18
	MOVLW      0
	XORWF      FARG_Binario_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Binario_a_7Segmentos41
	MOVLW      9
	XORWF      FARG_Binario_a_7Segmentos_valor+0, 0
L__Binario_a_7Segmentos41:
	BTFSC      STATUS+0, 2
	GOTO       L_Binario_a_7Segmentos19
	MOVLW      0
	XORWF      FARG_Binario_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Binario_a_7Segmentos42
	MOVLW      10
	XORWF      FARG_Binario_a_7Segmentos_valor+0, 0
L__Binario_a_7Segmentos42:
	BTFSC      STATUS+0, 2
	GOTO       L_Binario_a_7Segmentos20
	MOVLW      0
	XORWF      FARG_Binario_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Binario_a_7Segmentos43
	MOVLW      11
	XORWF      FARG_Binario_a_7Segmentos_valor+0, 0
L__Binario_a_7Segmentos43:
	BTFSC      STATUS+0, 2
	GOTO       L_Binario_a_7Segmentos21
	MOVLW      0
	XORWF      FARG_Binario_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Binario_a_7Segmentos44
	MOVLW      12
	XORWF      FARG_Binario_a_7Segmentos_valor+0, 0
L__Binario_a_7Segmentos44:
	BTFSC      STATUS+0, 2
	GOTO       L_Binario_a_7Segmentos22
	MOVLW      0
	XORWF      FARG_Binario_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Binario_a_7Segmentos45
	MOVLW      13
	XORWF      FARG_Binario_a_7Segmentos_valor+0, 0
L__Binario_a_7Segmentos45:
	BTFSC      STATUS+0, 2
	GOTO       L_Binario_a_7Segmentos23
	MOVLW      0
	XORWF      FARG_Binario_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Binario_a_7Segmentos46
	MOVLW      14
	XORWF      FARG_Binario_a_7Segmentos_valor+0, 0
L__Binario_a_7Segmentos46:
	BTFSC      STATUS+0, 2
	GOTO       L_Binario_a_7Segmentos24
	MOVLW      0
	XORWF      FARG_Binario_a_7Segmentos_valor+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Binario_a_7Segmentos47
	MOVLW      15
	XORWF      FARG_Binario_a_7Segmentos_valor+0, 0
L__Binario_a_7Segmentos47:
	BTFSC      STATUS+0, 2
	GOTO       L_Binario_a_7Segmentos25
;Mikro_Display_01_84A.c,21 :: 		}
L_end_Binario_a_7Segmentos:
	RETURN
; end of _Binario_a_7Segmentos

_main:

;Mikro_Display_01_84A.c,22 :: 		void main() {
;Mikro_Display_01_84A.c,24 :: 		TRISA=0b00001111;
	MOVLW      15
	MOVWF      TRISA+0
;Mikro_Display_01_84A.c,25 :: 		TRISB=0;
	CLRF       TRISB+0
;Mikro_Display_01_84A.c,26 :: 		PORTB=0;
	CLRF       PORTB+0
;Mikro_Display_01_84A.c,27 :: 		do{
L_main26:
;Mikro_Display_01_84A.c,28 :: 		x=PORTA;
	MOVF       PORTA+0, 0
	MOVWF      main_x_L0+0
	CLRF       main_x_L0+1
;Mikro_Display_01_84A.c,29 :: 		PORTB=Binario_a_7Segmentos(x);
	MOVF       main_x_L0+0, 0
	MOVWF      FARG_Binario_a_7Segmentos_valor+0
	MOVF       main_x_L0+1, 0
	MOVWF      FARG_Binario_a_7Segmentos_valor+1
	CALL       _Binario_a_7Segmentos+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Mikro_Display_01_84A.c,30 :: 		}while(1);
	GOTO       L_main26
;Mikro_Display_01_84A.c,31 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

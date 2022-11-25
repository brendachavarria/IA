
_main:

;prueba_ivan.c,19 :: 		void main() {
;prueba_ivan.c,21 :: 		char cad[]={"Estudia un Ciclo Formativo de Eletronica"};
	MOVLW      ?ICSmain_cad_L0+0
	MOVWF      ___DoICPAddr+0
	MOVLW      hi_addr(?ICSmain_cad_L0+0)
	MOVWF      ___DoICPAddr+1
	MOVLW      main_cad_L0+0
	MOVWF      FSR
	MOVLW      43
	MOVWF      R0+0
	CALL       ___CC2DW+0
;prueba_ivan.c,24 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;prueba_ivan.c,25 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;prueba_ivan.c,26 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;prueba_ivan.c,27 :: 		Lcd_Out(1,16,cad);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      main_cad_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;prueba_ivan.c,29 :: 		do{
L_main0:
;prueba_ivan.c,31 :: 		if(a==1){
	MOVF       main_a_L0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;prueba_ivan.c,32 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;prueba_ivan.c,33 :: 		Lcd_Out(1,16,cad);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      main_cad_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;prueba_ivan.c,34 :: 		delay_ms(30);
	MOVLW      39
	MOVWF      R12+0
	MOVLW      245
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
;prueba_ivan.c,35 :: 		}
L_main3:
;prueba_ivan.c,36 :: 		if(a>17){
	MOVLW      128
	XORLW      17
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_a_L0+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;prueba_ivan.c,37 :: 		Lcd_Out(1,b--,cad);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVF       main_b_L0+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      main_cad_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	DECF       main_b_L0+0, 1
;prueba_ivan.c,38 :: 		delay_ms(30);
	MOVLW      39
	MOVWF      R12+0
	MOVLW      245
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
;prueba_ivan.c,39 :: 		}
L_main5:
;prueba_ivan.c,40 :: 		Lcd_cmd(_LCD_SHIFT_LEFT);
	MOVLW      24
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;prueba_ivan.c,41 :: 		delay_ms(30);
	MOVLW      39
	MOVWF      R12+0
	MOVLW      245
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
;prueba_ivan.c,42 :: 		a++;
	INCF       main_a_L0+0, 1
;prueba_ivan.c,43 :: 		if(a>40){
	MOVLW      128
	XORLW      40
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_a_L0+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main8
;prueba_ivan.c,44 :: 		a=1;
	MOVLW      1
	MOVWF      main_a_L0+0
;prueba_ivan.c,45 :: 		b=16;
	MOVLW      16
	MOVWF      main_b_L0+0
;prueba_ivan.c,46 :: 		}
L_main8:
;prueba_ivan.c,47 :: 		}while(1);
	GOTO       L_main0
;prueba_ivan.c,48 :: 		}
L_end_main:
	GOTO       $+0
; end of _main


_main:

;Mikro_Mensaje07_628A.c,15 :: 		void main() {
;Mikro_Mensaje07_628A.c,16 :: 		char cad []=("Estudia un Ciclo Formativo de Electronica");
	MOVLW      ?ICSmain_cad_L0+0
	MOVWF      ___DoICPAddr+0
	MOVLW      hi_addr(?ICSmain_cad_L0+0)
	MOVWF      ___DoICPAddr+1
	MOVLW      main_cad_L0+0
	MOVWF      FSR
	MOVLW      44
	MOVWF      R0+0
	CALL       ___CC2DW+0
;Mikro_Mensaje07_628A.c,18 :: 		LCD_Init();
	CALL       _Lcd_Init+0
;Mikro_Mensaje07_628A.c,19 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mikro_Mensaje07_628A.c,20 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mikro_Mensaje07_628A.c,21 :: 		Lcd_out(1,16,cad);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      main_cad_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Mikro_Mensaje07_628A.c,22 :: 		do{
L_main0:
;Mikro_Mensaje07_628A.c,23 :: 		if(a==1){
	MOVF       main_a_L0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;Mikro_Mensaje07_628A.c,24 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mikro_Mensaje07_628A.c,25 :: 		Lcd_out(1,16,cad);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      main_cad_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Mikro_Mensaje07_628A.c,26 :: 		delay_ms(50);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
;Mikro_Mensaje07_628A.c,27 :: 		}
L_main3:
;Mikro_Mensaje07_628A.c,28 :: 		if(a>17){
	MOVLW      128
	XORLW      17
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_a_L0+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;Mikro_Mensaje07_628A.c,29 :: 		Lcd_out(1,b--,cad);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVF       main_b_L0+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      main_cad_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	DECF       main_b_L0+0, 1
;Mikro_Mensaje07_628A.c,30 :: 		delay_ms(50);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
;Mikro_Mensaje07_628A.c,31 :: 		}
L_main5:
;Mikro_Mensaje07_628A.c,32 :: 		Lcd_cmd(_LCD_SHIFT_LEFT);
	MOVLW      24
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mikro_Mensaje07_628A.c,33 :: 		delay_ms(30);
	MOVLW      39
	MOVWF      R12+0
	MOVLW      245
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
;Mikro_Mensaje07_628A.c,34 :: 		a++;
	INCF       main_a_L0+0, 1
;Mikro_Mensaje07_628A.c,35 :: 		if(a>39){
	MOVLW      128
	XORLW      39
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_a_L0+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main8
;Mikro_Mensaje07_628A.c,36 :: 		a=1;
	MOVLW      1
	MOVWF      main_a_L0+0
;Mikro_Mensaje07_628A.c,37 :: 		b=16;
	MOVLW      16
	MOVWF      main_b_L0+0
;Mikro_Mensaje07_628A.c,38 :: 		}
L_main8:
;Mikro_Mensaje07_628A.c,39 :: 		}while(1);
	GOTO       L_main0
;Mikro_Mensaje07_628A.c,40 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

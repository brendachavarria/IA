
_main:

;Mikro_Men_02p_87A.c,18 :: 		void main() {
;Mikro_Men_02p_87A.c,19 :: 		char cad[]={"Hola!, que tal?"};
	MOVLW      72
	MOVWF      main_cad_L0+0
	MOVLW      111
	MOVWF      main_cad_L0+1
	MOVLW      108
	MOVWF      main_cad_L0+2
	MOVLW      97
	MOVWF      main_cad_L0+3
	MOVLW      33
	MOVWF      main_cad_L0+4
	MOVLW      44
	MOVWF      main_cad_L0+5
	MOVLW      32
	MOVWF      main_cad_L0+6
	MOVLW      113
	MOVWF      main_cad_L0+7
	MOVLW      117
	MOVWF      main_cad_L0+8
	MOVLW      101
	MOVWF      main_cad_L0+9
	MOVLW      32
	MOVWF      main_cad_L0+10
	MOVLW      116
	MOVWF      main_cad_L0+11
	MOVLW      97
	MOVWF      main_cad_L0+12
	MOVLW      108
	MOVWF      main_cad_L0+13
	MOVLW      63
	MOVWF      main_cad_L0+14
	CLRF       main_cad_L0+15
;Mikro_Men_02p_87A.c,20 :: 		LCD_Init();
	CALL       _Lcd_Init+0
;Mikro_Men_02p_87A.c,21 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mikro_Men_02p_87A.c,22 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mikro_Men_02p_87A.c,23 :: 		Lcd_Out(1,1,cad);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      main_cad_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Mikro_Men_02p_87A.c,24 :: 		}
L_end_main:
	GOTO       $+0
; end of _main


_main:

;Mikro_Men_02_84A.c,16 :: 		void main() {
;Mikro_Men_02_84A.c,17 :: 		LCD_Init();
	CALL       _Lcd_Init+0
;Mikro_Men_02_84A.c,18 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mikro_Men_02_84A.c,19 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mikro_Men_02_84A.c,20 :: 		Lcd_Out_Cp("Hola!, que tal?");
	MOVLW      ?lstr1_Mikro_Men_02_84A+0
	MOVWF      FARG_Lcd_Out_CP_text+0
	CALL       _Lcd_Out_CP+0
;Mikro_Men_02_84A.c,21 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

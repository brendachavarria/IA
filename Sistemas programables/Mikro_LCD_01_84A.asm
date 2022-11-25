
_main:

;Mikro_LCD_01_84A.c,16 :: 		void main() {
;Mikro_LCD_01_84A.c,17 :: 		LCD_Init();
	CALL       _Lcd_Init+0
;Mikro_LCD_01_84A.c,18 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mikro_LCD_01_84A.c,19 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mikro_LCD_01_84A.c,20 :: 		Lcd_Chr_Cp('H');
	MOVLW      72
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;Mikro_LCD_01_84A.c,21 :: 		Lcd_Chr_Cp('o');
	MOVLW      111
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;Mikro_LCD_01_84A.c,22 :: 		Lcd_Chr_Cp('l');
	MOVLW      108
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;Mikro_LCD_01_84A.c,23 :: 		Lcd_Chr_Cp('a');
	MOVLW      97
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;Mikro_LCD_01_84A.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

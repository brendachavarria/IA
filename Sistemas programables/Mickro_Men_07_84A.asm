
_main:

;Mickro_Men_07_84A.c,17 :: 		void main() {
;Mickro_Men_07_84A.c,18 :: 		LCD_Init();
	CALL       _Lcd_Init+0
;Mickro_Men_07_84A.c,19 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mickro_Men_07_84A.c,20 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mickro_Men_07_84A.c,21 :: 		Lcd_out_Cp("Estudia un Ciclo Formativo deElectronica"); //(1,micro,"Estudia un Ciclo Formativo de Electronic");
	MOVLW      ?lstr1_Mickro_Men_07_84A+0
	MOVWF      FARG_Lcd_Out_CP_text+0
	CALL       _Lcd_Out_CP+0
;Mickro_Men_07_84A.c,23 :: 		do{
L_main0:
;Mickro_Men_07_84A.c,24 :: 		Lcd_cmd(_LCD_SHIFT_LEFT);
	MOVLW      24
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mickro_Men_07_84A.c,25 :: 		delay_ms(30);
	MOVLW      39
	MOVWF      R12+0
	MOVLW      245
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
;Mickro_Men_07_84A.c,26 :: 		}while(1);
	GOTO       L_main0
;Mickro_Men_07_84A.c,27 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

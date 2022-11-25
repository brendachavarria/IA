
_main:

;Mikro_Men07_87Ap.c,15 :: 		void main() {
;Mikro_Men07_87Ap.c,16 :: 		LCD_Init();
	CALL       _Lcd_Init+0
;Mikro_Men07_87Ap.c,17 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mikro_Men07_87Ap.c,18 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mikro_Men07_87Ap.c,20 :: 		Lcd_out(1,16,"Estudia un Ciclo Formativo de Eletronica");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Mikro_Men07_87Ap+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Mikro_Men07_87Ap.c,21 :: 		do{
L_main0:
;Mikro_Men07_87Ap.c,22 :: 		Lcd_cmd(_LCD_SHIFT_LEFT);
	MOVLW      24
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mikro_Men07_87Ap.c,23 :: 		delay_ms(50);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
;Mikro_Men07_87Ap.c,24 :: 		}while(1);
	GOTO       L_main0
;Mikro_Men07_87Ap.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

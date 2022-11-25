
_LeerTeclado:

;Mikro_Teclado_877A.c,19 :: 		char LeerTeclado( void )
;Mikro_Teclado_877A.c,21 :: 		switch( Keypad_Key_Press() )
	CALL       _Keypad_Key_Press+0
	GOTO       L_LeerTeclado0
;Mikro_Teclado_877A.c,23 :: 		case 1: return '7';
L_LeerTeclado2:
	MOVLW      55
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;Mikro_Teclado_877A.c,24 :: 		case 2: return '8';
L_LeerTeclado3:
	MOVLW      56
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;Mikro_Teclado_877A.c,25 :: 		case 3: return '9';
L_LeerTeclado4:
	MOVLW      57
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;Mikro_Teclado_877A.c,26 :: 		case 4: return 'F';
L_LeerTeclado5:
	MOVLW      70
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;Mikro_Teclado_877A.c,27 :: 		case 5: return '4';
L_LeerTeclado6:
	MOVLW      52
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;Mikro_Teclado_877A.c,28 :: 		case 6: return '5';
L_LeerTeclado7:
	MOVLW      53
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;Mikro_Teclado_877A.c,29 :: 		case 7: return '6';
L_LeerTeclado8:
	MOVLW      54
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;Mikro_Teclado_877A.c,30 :: 		case 8: return 'E';
L_LeerTeclado9:
	MOVLW      69
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;Mikro_Teclado_877A.c,31 :: 		case 9: return '1';
L_LeerTeclado10:
	MOVLW      49
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;Mikro_Teclado_877A.c,32 :: 		case 10: return '2';
L_LeerTeclado11:
	MOVLW      50
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;Mikro_Teclado_877A.c,33 :: 		case 11: return '3';
L_LeerTeclado12:
	MOVLW      51
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;Mikro_Teclado_877A.c,34 :: 		case 12: return 'D';
L_LeerTeclado13:
	MOVLW      68
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;Mikro_Teclado_877A.c,35 :: 		case 13: return 'A';
L_LeerTeclado14:
	MOVLW      65
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;Mikro_Teclado_877A.c,36 :: 		case 14: return '0';
L_LeerTeclado15:
	MOVLW      48
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;Mikro_Teclado_877A.c,37 :: 		case 15: return 'B';
L_LeerTeclado16:
	MOVLW      66
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;Mikro_Teclado_877A.c,38 :: 		case 16: return 'C';
L_LeerTeclado17:
	MOVLW      67
	MOVWF      R0+0
	GOTO       L_end_LeerTeclado
;Mikro_Teclado_877A.c,39 :: 		default: return 0; //Tecla no pulsada.
L_LeerTeclado18:
	CLRF       R0+0
	GOTO       L_end_LeerTeclado
;Mikro_Teclado_877A.c,40 :: 		}
L_LeerTeclado0:
	MOVF       R0+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado2
	MOVF       R0+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado3
	MOVF       R0+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado4
	MOVF       R0+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado5
	MOVF       R0+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado6
	MOVF       R0+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado7
	MOVF       R0+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado8
	MOVF       R0+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado9
	MOVF       R0+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado10
	MOVF       R0+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado11
	MOVF       R0+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado12
	MOVF       R0+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado13
	MOVF       R0+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado14
	MOVF       R0+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado15
	MOVF       R0+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado16
	MOVF       R0+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_LeerTeclado17
	GOTO       L_LeerTeclado18
;Mikro_Teclado_877A.c,41 :: 		}
L_end_LeerTeclado:
	RETURN
; end of _LeerTeclado

_main:

;Mikro_Teclado_877A.c,43 :: 		void main() {
;Mikro_Teclado_877A.c,46 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;Mikro_Teclado_877A.c,47 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mikro_Teclado_877A.c,48 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mikro_Teclado_877A.c,49 :: 		Lcd_Out(1, 1,"Tecla:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Mikro_Teclado_877A+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Mikro_Teclado_877A.c,50 :: 		do {
L_main19:
;Mikro_Teclado_877A.c,54 :: 		Tecla=LeerTeclado(); //Se lee el teclado y su resultado se guarda en Tecla.
	CALL       _LeerTeclado+0
;Mikro_Teclado_877A.c,55 :: 		Lcd_Chr(2,1,Tecla);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Mikro_Teclado_877A.c,56 :: 		} while (1);
	GOTO       L_main19
;Mikro_Teclado_877A.c,57 :: 		}
L_end_main:
	GOTO       $+0
; end of _main


_main:

;Mikro_LCD_03p_87A.c,17 :: 		void main() {
;Mikro_LCD_03p_87A.c,18 :: 		unsigned short num1=0x0C,num2=0xAE; //num1=12 y num2=175
	MOVLW      12
	MOVWF      main_num1_L0+0
	MOVLW      174
	MOVWF      main_num2_L0+0
;Mikro_LCD_03p_87A.c,20 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;Mikro_LCD_03p_87A.c,21 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mikro_LCD_03p_87A.c,22 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Mikro_LCD_03p_87A.c,23 :: 		ByteToHex(num1,cad1);   //convierte el decimal a hexadecimal
	MOVF       main_num1_L0+0, 0
	MOVWF      FARG_ByteToHex_input+0
	MOVLW      main_cad1_L0+0
	MOVWF      FARG_ByteToHex_output+0
	CALL       _ByteToHex+0
;Mikro_LCD_03p_87A.c,24 :: 		ByteToHex(num2,cad2);
	MOVF       main_num2_L0+0, 0
	MOVWF      FARG_ByteToHex_input+0
	MOVLW      main_cad2_L0+0
	MOVWF      FARG_ByteToHex_output+0
	CALL       _ByteToHex+0
;Mikro_LCD_03p_87A.c,25 :: 		Lcd_Out(1,1,cad1);//num1);//cad1);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      main_cad1_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Mikro_LCD_03p_87A.c,26 :: 		Lcd_Out(2,1,cad2);//num2);//cad2);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      main_cad2_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Mikro_LCD_03p_87A.c,30 :: 		b=cad1[1];
	MOVF       main_cad1_L0+1, 0
	MOVWF      main_b_L0+0
;Mikro_LCD_03p_87A.c,31 :: 		if ((num1&11110000)==0)
	MOVF       main_num1_L0+0, 0
	ANDLW      112
	MOVWF      R1+0
	MOVLW      134
	MOVWF      R1+1
	MOVLW      169
	MOVWF      R1+2
	MOVLW      0
	MOVWF      R1+3
	MOVLW      0
	ANDWF      R1+1, 1
	ANDWF      R1+2, 1
	ANDWF      R1+3, 1
	MOVLW      0
	MOVWF      R0+0
	XORWF      R1+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main5
	MOVF       R0+0, 0
	XORWF      R1+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main5
	MOVF       R0+0, 0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main5
	MOVF       R1+0, 0
	XORLW      0
L__main5:
	BTFSS      STATUS+0, 2
	GOTO       L_main0
;Mikro_LCD_03p_87A.c,32 :: 		Lcd_Chr(1, 5, ' ');
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      32
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	GOTO       L_main1
L_main0:
;Mikro_LCD_03p_87A.c,34 :: 		Lcd_Chr(1, 5, cad1[0]);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       main_cad1_L0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
L_main1:
;Mikro_LCD_03p_87A.c,35 :: 		Lcd_Chr(1, 6, cad1[1]);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       main_cad1_L0+1, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Mikro_LCD_03p_87A.c,36 :: 		c=cad2[0];
	MOVF       main_cad2_L0+0, 0
	MOVWF      main_c_L0+0
;Mikro_LCD_03p_87A.c,37 :: 		d=cad2[1];
	MOVF       main_cad2_L0+1, 0
	MOVWF      main_d_L0+0
;Mikro_LCD_03p_87A.c,38 :: 		if ((num2&11110000)==0)
	MOVF       main_num2_L0+0, 0
	ANDLW      112
	MOVWF      R1+0
	MOVLW      134
	MOVWF      R1+1
	MOVLW      169
	MOVWF      R1+2
	MOVLW      0
	MOVWF      R1+3
	MOVLW      0
	ANDWF      R1+1, 1
	ANDWF      R1+2, 1
	ANDWF      R1+3, 1
	MOVLW      0
	MOVWF      R0+0
	XORWF      R1+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main6
	MOVF       R0+0, 0
	XORWF      R1+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main6
	MOVF       R0+0, 0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main6
	MOVF       R1+0, 0
	XORLW      0
L__main6:
	BTFSS      STATUS+0, 2
	GOTO       L_main2
;Mikro_LCD_03p_87A.c,39 :: 		Lcd_Chr(2, 5, ' ');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      32
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
	GOTO       L_main3
L_main2:
;Mikro_LCD_03p_87A.c,41 :: 		Lcd_Chr(2, 5, c);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       main_c_L0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
L_main3:
;Mikro_LCD_03p_87A.c,42 :: 		Lcd_Chr(2, 6, d);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       main_d_L0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Mikro_LCD_03p_87A.c,43 :: 		Lcd_Chr(1, 9, b);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       main_b_L0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Mikro_LCD_03p_87A.c,44 :: 		Lcd_Chr(2, 9, d);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       main_d_L0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Mikro_LCD_03p_87A.c,45 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

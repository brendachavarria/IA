	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_LVP_OFF&_MCLRE_OFF&_INTOSC_OSC_CLKOUT
	LIST	  P=16F628A		
	INCLUDE  <P16F628A.INC>
	CBLOCK 0x20
	ENDC
	ORG	0
Inicio
	call	LCD_Inicializa
	movlw	'H'
	call	LCD_Caracter
	movlw	'o'
	call	LCD_Caracter
	movlw	'l'
	call	LCD_Caracter
	movlw	'a'
	call	LCD_Caracter
	sleep
	;INCLUDE  <LCD_4BIT.INC>
	;INCLUDE  <RETARDOS.INC>
	INCLUDE  "T:\SISTEMAS PROGRAMABLES\Programas\LCD_4BIT.INC"
	INCLUDE  "T:\SISTEMAS PROGRAMABLES\Programas\RETARDOS.INC"
	END
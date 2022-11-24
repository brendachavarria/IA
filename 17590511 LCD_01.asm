	__CONFIG   _CP_OFF &  _WDT_OFF & _PWRTE_ON & _XT_OSC
	LIST	   P=16F84A
	INCLUDE  <P16F84A.INC>
	CBLOCK 0x0C
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
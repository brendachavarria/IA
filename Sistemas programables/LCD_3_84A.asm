	__CONFIG   _CP_OFF &  _WDT_OFF & _PWRTE_ON & _XT_OSC
	LIST	   P=16F84A
	INCLUDE  <P16F84A.INC>

	CBLOCK	0x0C
	ENDC

Numero_NoCeroAlto	EQU	0x1D	
Numero_CeroAlto		EQU	0x0D	

	ORG	0
Inicio
	call	LCD_Inicializa
Principal
	movlw	Numero_NoCeroAlto
	call	LCD_ByteCompleto
	call	LCD_DosEspaciosBlancos
	movlw	Numero_NoCeroAlto
	call	LCD_Byte
	call	LCD_DosEspaciosBlancos
	movlw	Numero_NoCeroAlto
	call	LCD_Nibble
	call	LCD_Linea2		
	movlw	Numero_CeroAlto
	call	LCD_ByteCompleto
	call	LCD_DosEspaciosBlancos
	movlw	Numero_CeroAlto
	call	LCD_Byte
	call	LCD_DosEspaciosBlancos
	movlw	Numero_CeroAlto
	call	LCD_Nibble
	sleep

	INCLUDE  <LCD_4BIT.INC>
	INCLUDE  <RETARDOS.INC>
	END
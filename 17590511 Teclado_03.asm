	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_LVP_OFF&_MCLRE_OFF&_INTOSC_OSC_CLKOUT
	LIST	  P=16F628A		
	INCLUDE  <P16F628A.INC>
	CBLOCK  0x20
	ENDC
	ORG	0
	goto 	Inicio
	ORG	4
	goto	ServicioInterrupcion
Inicio
	call	LCD_Inicializa
	call	Teclado_Inicializa
	movlw	b'10001000'
	movwf	INTCON
Principal
	sleep
	goto	Principal
ServicioInterrupcion
	call	Teclado_LeeHex
	call	LCD_Nibble
	call	Teclado_EsperaDejePulsar
	bcf	INTCON,RBIF
	retfie
	;INCLUDE  <TECLADO.INC>
	;INCLUDE  <LCD_4BIT.INC>
	;INCLUDE  <RETARDOS.INC>
	INCLUDE  "T:\SISTEMAS PROGRAMABLES\Programas\TECLADO.INC"
	INCLUDE  "T:\SISTEMAS PROGRAMABLES\Programas\LCD_4BIT_T.INC"
	INCLUDE  "T:\SISTEMAS PROGRAMABLES\Programas\RETARDOS.INC"
	END
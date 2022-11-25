__CONFIG   _CP_OFF &  _WDT_OFF & _PWRTE_ON & _XT_OSC
	LIST	P=16F84A
	INCLUDE  <P16F84A.INC>

	CBLOCK  0x0C
	ENDC

	ORG	0
Inicio
	call	LCD_Inicializa
Principal
	movlw	Mensaje0	
	call	LCD_MensajeMovimiento
	goto	Principal	

Mensajes
	addwf	PCL,F
Mensaje0 
	DT "                 "		
	DT "Estudia un Ciclo Formativo "
	DT "de ELECTRONICA."
	DT "                ", 0x0
;
	INCLUDE  <LCD_MENS.INC>		
	INCLUDE  <LCD_4BIT.INC>		
	INCLUDE  <RETARDOS.INC>		
	END	
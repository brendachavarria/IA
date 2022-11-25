    __CONFIG   _CP_OFF &  _WDT_OFF & _PWRTE_ON & _XT_OSC
	LIST	   P=16F84A	
	INCLUDE  <P16F84A.INC>	

	CBLOCK   0x0C
	Contador
	ENDC		

	ORG	0x2100			
					
	DE	0x00		

	ORG 	0		
Inicio
	call	LCD_Inicializa
	clrw			
	call	EEPROM_LeeDato
	movwf	Contador	
	call	BIN_a_BCD	
	call	LCD_Byte	
	movlw	MensajeReseteado
	call	LCD_Mensaje
	incf	Contador,F	
	movf	Contador,W	
	call	EEPROM_EscribeDato
Principal
	sleep				
	goto	Principal

Mensajes
	addwf	PCL,F	
MensajeReseteado
	DT " reseteados.   ", 0x00
FinMensajes
    INCLUDE   <LCD_MENS.INC>;
    INCLUDE   <LCD_4BIT.INC>;
	INCLUDE   <EEPROM.INC>;		
	INCLUDE   <RETARDOS.INC>;	
	INCLUDE   <BIN_BCD.INC>
	
	END
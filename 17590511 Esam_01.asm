	__CONFIG   _CP_OFF &  _WDT_OFF & _PWRTE_ON & _XT_OSC
	LIST	   P=16F84A		
	INCLUDE  <P16F84A.INC>		

Constante  EQU	d'74'
	ORG 	0			
Inicio
	bsf	STATUS,RP0
	clrf	TRISB		
	movlw	b'00011111'	
	movwf	TRISA
	bcf	STATUS,RP0
Principal
	movf 	PORTA,W		
	addlw	Constante	
	movwf	PORTB		
	goto 	Principal	

	END		
	__CONFIG   _CP_OFF &  _WDT_OFF & _PWRTE_ON & _XT_OSC
	LIST	   P=16F84A		
	INCLUDE  <P16F84A.INC>		
	k  EQU	b'00110010' ;50
	ORG 	0			
Inicio
	bsf	STATUS,RP0
	clrf	TRISB
	movlw	b'01011000'	;88
	movwf	TRISA
	bcf	STATUS,RP0
Principal
	movf 	PORTA,W
	addlw	k
	movwf	PORTB
	goto 	Principal
	END
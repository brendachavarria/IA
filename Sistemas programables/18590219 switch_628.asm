	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_LVP_OFF&_MCLRE_OFF&_INTOSC_OSC_CLKOUT
	LIST	P=16F628A
	INCLUDE <P16F628A.INC>

	ORG	0
		
Inicio	
	bsf		STATUS,RP0
	clrf	TRISB
	movlw 	b'11111111'
	movwf 	TRISA
	bcf		STATUS,RP0

Principal
	movf 	PORTA,W
	movwf	PORTB
	goto	Principal
	
	END
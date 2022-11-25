	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_LVP_OFF&_XT_OSC
	LIST	P=16F877A
	INCLUDE <P16F877A.INC>

	ORG	0
		
Inicio	
	bsf		STATUS,RP0
	clrf	TRISC
	movlw 	b'11111111'
	movwf 	TRISB
	bcf		STATUS,RP0

Principal
	movf 	PORTB,W
	movwf	PORTC
	goto	Principal
	
	END
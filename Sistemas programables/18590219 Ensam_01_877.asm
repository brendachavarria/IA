	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_LVP_OFF&_XT_OSC
	LIST	P=16F877A
	INCLUDE <P16F877A.INC>
	
Constante EQU	b'01010101'

	ORG	0
		
Inicio	
	bsf		STATUS,RP0
	clrf	TRISC
	bcf		STATUS,RP0
	movlw	Constante
Principal
	movwf	PORTC
	goto	Principal
		
	END
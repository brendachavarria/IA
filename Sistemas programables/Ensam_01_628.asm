	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_LVP_OFF&_MCLRE_OFF&_INTOSC_OSC_CLKOUT
	LIST	P=16F628A
	INCLUDE <P16F628A.INC>
	
Constante EQU	b'01010101'

		ORG	0
		
Inicio	bsf		STATUS,RP0
		clrf	TRISB
		bcf		STATUS,RP0
		movlw	Constante
Principal
		movwf	PORTB
		goto	Principal
		
		END
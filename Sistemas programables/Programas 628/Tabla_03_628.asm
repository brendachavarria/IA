	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_LVP_OFF&_MCLRE_OFF&_INTOSC_OSC_CLKOUT
	LIST	P=16F628A
	INCLUDE <P16F628A.INC>

	ORG 0
		
Inicio	
	bsf 	STATUS,RP0
	clrf 	TRISB
	movlw 	b'00011111'
	movwf	TRISA
	bcf		STATUS,RP0
	
Principal
	movf	PORTA,W
	andlw	b'00000111'
	call 	TablaVerdad
	movwf	PORTB
	goto 	Principal
		
TablaVerdad
	addwf	PCL,F
	retlw	b'00001010'
	retlw	b'00001001'
	retlw	b'00100011'
	retlw	b'00001111'
	retlw	b'00100000'
	retlw	b'00000111'
	retlw	b'00010111'
	retlw	b'00111111'

		END
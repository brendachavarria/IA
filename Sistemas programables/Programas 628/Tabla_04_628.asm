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
	DT 		0x0A, 0x09, 0x23, 0x0F, 0x20, 0x07, 0x17, 0x3F

		END
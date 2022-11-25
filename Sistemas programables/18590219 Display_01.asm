	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_XT_OSC
	
	LIST	P=16F84A
	INCLUDE <P16F84A.INC>

	ORG 0
		
Inicio	
	bsf 	STATUS,RP0
	clrf 	TRISB
	movlw 	b'00011111'
	movwf	PORTA
	bcf		STATUS,RP0
	
Principal
	movf	PORTA,W
	andlw	b'00011111'

	call 	Binario_a_7Segmentos
	movwf	PORTB
	goto 	Principal
		
Binario_a_7Segmentos
	addwf	PCL,F
	retlw	3Fh
	retlw	06h
	retlw	5Bh
	retlw	4Fh
	retlw	66h
	retlw	6Dh
	retlw	7Dh
	retlw	07h
	retlw	7Fh
	retlw	67h
	retlw	77h
	retlw	7Ch
	retlw	39h
	retlw	5Eh
	retlw	79h
	retlw	71h

		END
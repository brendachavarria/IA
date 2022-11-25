	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_LVP_OFF&_MCLRE_OFF&_INTOSC_OSC_CLKOUT
	LIST	P=16F628A
	INCLUDE <P16F628A.INC>

Numero EQU d'13'

	ORG 0
		
Inicio	
	bsf		STATUS,RP0
	clrf	TRISB
	movlw 	b'00011111'
	movwf 	TRISA
	bcf		STATUS,RP0
	
Principal
	movlw 	Numero
	subwf	PORTA,W	
	movlw	b'11110000'
	btfss	STATUS,C
	goto	ActivaSalida
	movlw	b'11111111'
	btfsc 	STATUS,Z
	goto 	ActivaSalida
	movlw	b'01010101'

ActivaSalida
	movwf	PORTB
	goto	Principal
		
		END
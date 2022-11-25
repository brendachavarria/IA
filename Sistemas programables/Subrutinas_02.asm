	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_XT_OSC
	
	LIST	P=16F84A
	INCLUDE <P16F84A.INC>

	CBLOCK 0x0C
	ENDC

Numero 	EQU 	.124

	ORG 0
		
Inicio	
	bsf STATUS,RP0
	clrf TRISB
	bcf	STATUS,RP0
	
Principal
	movlw 	Numero
	call 	BIN_a_BCD
	movwf	PORTB
	goto	$

	INCLUDE <BIN_BCD.INC>
		
		END
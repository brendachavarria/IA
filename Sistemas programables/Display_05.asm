	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_XT_OSC
	
	LIST	P=16F84A
	INCLUDE <P16F84A.INC>

	CBLOCK 0x0C
	ENDC

	Caracter EQU 	'Z'

	ORG 0
		
Inicio	
	bsf 	STATUS,RP0
	clrf	PORTB
	bcf		STATUS,RP0
	
Principal
	movlw	Caracter
	call 	ASCII_a_7Segmentos
	movwf	PORTB
	goto 	Principal

	INCLUDE <DISPLAY_7S.INC>

		END
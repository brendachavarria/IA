	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_LVP_OFF&_XT_OSC
	LIST	P=16F877A
	INCLUDE <P16F877A.INC>

	CBLOCK 0x20
	ENDC

	Caracter EQU 	'Z'

	ORG 0
		
Inicio	
	bsf 	STATUS,RP0
	clrf	TRISC
	bcf		STATUS,RP0
	
Principal
	movlw	Caracter
	call 	ASCII_a_7Segmentos
	movwf	PORTC
	goto 	Principal

	INCLUDE <DISPLAY_7S.INC>

		END
	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_LVP_OFF&_MCLRE_OFF&_INTOSC_OSC_CLKOUT
	LIST	P=16F628A
	INCLUDE <P16F628A.INC>

	CBLOCK 0x20
	ENDC

	Caracter EQU 	'Z'

	ORG 0
		
Inicio	
	bsf 	STATUS,RP0
	clrf	TRISB
	bcf		STATUS,RP0
	
Principal
	movlw	Caracter
	call 	ASCII_a_7Segmentos
	movwf	PORTB
	goto 	Principal

	INCLUDE <DISPLAY_7S.INC>

		END
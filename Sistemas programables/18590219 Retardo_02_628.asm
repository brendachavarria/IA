	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_LVP_OFF&_MCLRE_OFF&_INTOSC_OSC_CLKOUT
	LIST	P=16F628A
	INCLUDE <P16F628A.INC>

	CBLOCK 0x20
	ENDC

	#DEFINE LED PORTB,0

	ORG 0
		
Inicio	
	bsf 	STATUS,RP0
	bcf		LED
	bcf		STATUS,RP0
	
Principal
	bsf		LED
	call 	Retardo_200ms
	call	Retardo_200ms
	bcf		LED
	call	Retardo_200ms
	call	Retardo_100ms
	goto 	Principal


	INCLUDE <RETARDOS.INC>

		END
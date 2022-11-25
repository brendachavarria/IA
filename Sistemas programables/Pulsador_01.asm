	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_XT_OSC
	
	LIST	P=16F84A
	INCLUDE <P16F84A.INC>

	CBLOCK 0x0C
	Contador
	ENDC

	#DEFINE Pulsador	PORTA,4
	#DEFINE Display 	PORTB

	ORG 0
		
Inicio	
	bsf 	STATUS,RP0
	clrf	Display
	bsf		Pulsador
	bcf		STATUS,RP0
	call	InicializaContador
	call	Visualiza

Principal
	btfsc	Pulsador
	goto	Fin
	call	Retardo_20ms
	btfsc	Pulsador
	goto 	Fin
	call	IncrementaVisualiza

EsperaDejePulsar
	btfss	Pulsador
	goto	EsperaDejePulsar
	Fin 	goto 	Principal		

IncrementaVisualiza
	incf	Contador,F
	movlw	d'10'
	subwf	Contador,W
	btfsc	STATUS,C

InicializaContador
	clrf	Contador

Visualiza
	movf	Contador,W
	call	Numero_a_7Segmentos
	movwf	Display
	return

	INCLUDE <DISPLAY_7S.INC>
	INCLUDE <RETARDOS.INC>

		END
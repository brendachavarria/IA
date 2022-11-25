	__CONFIG   _CP_OFF &  _WDT_OFF & _PWRTE_ON & _XT_OSC
	LIST	   P=16F84A
	INCLUDE  <P16F84A.INC>

	CBLOCK	0x0C
	ENDC
#DEFINE	Salida	PORTB,3

	ORG	0
Inicio
	bsf	STATUS,RP0
	bcf	Salida
	movlw	b'00000000'
	movwf	OPTION_REG
	bcf	STATUS,RP0
Principal
	bsf	Salida
	call	Timer0_500us
	nop
	nop
	bcf	Salida
	call	Timer0_500us
	goto	Principal
	
TMR0_Carga500us	EQU	-d'242'

Timer0_500us
	nop
	nop
	movlw	TMR0_Carga500us
	movwf	TMR0
	bcf		INTCON,T0IF
Timer0_Rebosamiento
	btfss	INTCON,T0IF
	goto	Timer0_Rebosamiento
	return
	end

	
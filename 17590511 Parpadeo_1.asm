	__CONFIG   _CP_OFF &  _WDT_OFF & _PWRTE_ON & _XT_OSC
	LIST	   P=16F84A		
	INCLUDE  <P16F84A.INC>		
C1	EQU	.1
C2	EQU .0
PDel0	EQU	0C
PDel1	EQU 0D
	ORG	0
Inicio
	bsf	STATUS,RP0
	clrf	TRISB		
	bcf	STATUS,RP0
Principal
	movlw	C1
	movwf	PORTB
	call pausa
	movlw	C2
	movwf	PORTB
	call pausa
	goto Principal
pausa
	movlw	.152
	movwf	PDel0
PLoop1	movlw	.150
	movwf	PDel1
PLoop2	clrwdt
PDelL1	goto	PDelL2
PDelL2	goto	PDelL3
PDelL3	clrwdt
	decfsz	PDel1, 1
	goto	PLoop2
	decfsz	PDel0, 1
	goto PLoop1
PDelL4	goto	PDelL5
PDelL5	goto	PDelL6
PDelL6	goto	PDelL7
PDelL7	clrwdt
	return
	END
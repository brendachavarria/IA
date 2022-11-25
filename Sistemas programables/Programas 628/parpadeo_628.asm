	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_LVP_OFF&_MCLRE_OFF&_INTOSC_OSC_CLKOUT
	LIST	P=16F628A
	INCLUDE <P16F628A.INC>

Constante1	EQU .1
Constante2	EQU	.0
PDel0	EQU	0C
PDel1	EQU 0D

	ORG 0
		 
Inicio
	bsf STATUS,RP0
	clrf TRISB
	bcf	STATUS,RP0

Principal
	movlw	Constante1
	movwf	PORTB
	call	pausa
	movlw	Constante2
	movwf	PORTB
	call	pausa
	goto	Principal
	
pausa
		movlw	.152
		movwf	PDel0
PLoop1	movlw	.150
		movwf	PDel1
PLoop2	clrwdt
PDelL1	goto PDelL2
PDelL2	goto PDelL3
PDelL3	clrwdt
		decfsz	PDel1,1
		goto	PLoop2
		decfsz	PDel0,1
		goto	PLoop1
PDelL4	goto PDelL5
PDelL5	goto PDelL6
PDelL6	goto PDelL7
PDelL7	clrwdt
		return
		
		END
		
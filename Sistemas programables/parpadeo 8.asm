	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_XT_OSC
	
	LIST	P=16F84A
	INCLUDE <P16F84A.INC>

Constante EQU	b'00000001'
PDel0	EQU 0C
Pdel1	EQU 0D	

	ORG 0
		
Inicio	
	bsf		STATUS,RP0
	clrf	TRISB
	bcf		STATUS,RP0
	movlw 	Constante

Loop
	movwf	PORTB
	call	pausa
	bcf		STATUS,C
	rlf		PORTB,F
	movf	PORTB,F
	btfss	STATUS,Z
	goto	NoCero
SiCero	
	movlw	Constante
	goto 	Loop
NoCero
	movf	PORTB,W
	goto 	Loop

pausa
	movlw	.152
	movwf	PDel0
PLoop1	
	movlw	.150
	movwf	Pdel1
PLoop2	clrwdt
PDelL1 goto PDelL2
PDelL2 goto	PDelL3
PDelL3 clrwdt
	decfsz	Pdel1,1
	goto PLoop2
	decfsz	PDel0,1
	goto PLoop1
PDelL4 goto PDelL5
PDelL5 goto PDelL6
PDelL6 goto PDelL7
PDelL7 clrwdt
	return
		
		END
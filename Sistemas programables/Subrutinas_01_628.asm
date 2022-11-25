	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_LVP_OFF&_MCLRE_OFF&_INTOSC_OSC_CLKOUT
	LIST	P=16F628A
	INCLUDE <P16F628A.INC>


	CBLOCK 0x20
	ENDC

Numero 	EQU 	.175

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

	CBLOCK
	Centenas
	Decenas
	Unidades
	ENDC
	
BIN_a_BCD
	clrf	Centenas
	clrf	Decenas
	movwf	Unidades
Resta10
	movlw	.10
	subwf	Unidades,W
	btfss	STATUS,C
	goto	Fin_BIN_BCD
IncrementaDecenas
	movwf	Unidades
	incf 	Decenas,F
	movlw	.10
	subwf	Decenas,W
	btfss	STATUS,C
	goto 	Resta10
IncrementaCentenas
	clrf	Decenas
	incf	Centenas,F
	goto 	Resta10
Fin_BIN_BCD
	swapf	Decenas,W
	addwf	Unidades,W
	return
		
		END
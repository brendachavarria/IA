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
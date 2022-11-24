	CBLOCK
	BCD_Centenas
	BCD_Decenas
	BCD_Unidades
	ENDC
BIN_a_BCD
	clrf	BCD_Centenas
	clrf	BCD_Decenas
	movwf	BCD_Unidades
BCD_Resta10
	movlw	.10
	subwf	BCD_Unidades,W
	btfss	STATUS,C
	goto 	BIN_BCD_Fin
BCD_IncrementaDecenas
	movwf	BCD_Unidades
	incf	BCD_Decenas,F
	movlw	.10
	subwf	BCD_Decenas,W
	btfss	STATUS,C
	goto	BCD_Resta10
BCD_IncrementaCentenas
	clrf	BCD_Decenas
	incf	BCD_Centenas,F
	goto	BCD_Resta10
BIN_BCD_Fin
	swapf	BCD_Decenas,W
	addwf	BCD_Unidades,W
	return
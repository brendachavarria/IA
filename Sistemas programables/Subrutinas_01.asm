	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_XT_OSC
		LIST	P=16F84A
		INCLUDE	<P16F84A.INC>

		CBLOCK 0x0C ;posicion en la que empieza la memoria RAM
		ENDC
		
Numero	EQU	.175

		ORG	0
Inicio
		bsf		STATUS,RP0  ;acceso al banco 1
		clrf	TRISB	;puerto b se configura de salida
		bcf		STATUS,RP0	;acceso al banco 0
Principal
		movlw	Numero
		call	BIN_a_BCD
		movwf	PORTB  ;el resultado se vizualiza en la salida
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
		incf	Decenas,F
		movlw	.10
		subwf	Decenas,W
		btfss	STATUS,C
		goto	Resta10
IncrementaCentenas
		clrf	Decenas
		incf	Centenas,F
		goto	Resta10
Fin_BIN_BCD
		swapf	Decenas,W
		addwf	Unidades,W
		return
		
		END
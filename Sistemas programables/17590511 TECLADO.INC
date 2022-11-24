
		CBLOCK
		Tecl_TeclaOrden			; Orden de la tecla a chequear.
		ENDC
Tecl_UltimaTecla	EQU	d'15'		; Valor de orden de la última tecla utilizada.


Teclado_LeeHex
		call	Teclado_LeeOrdenTecla	;Lee el Orden de la tecla pulsada.
		btfss	STATUS,C				;¿Pulsa alguna tecla?, ¿C=1?
		goto	Tecl_FinLeeHex			;No, por tanto sale.
		call	Tecl_ConvierteOrdenEnHex	;Lo convierte en su valor real mediante tabla.
		bsf	STATUS,C					;Vuelve a posicionar el Carry, porque la
Tecl_FinLeeHex			;instrucción "addwf PCL,F" lo pone a "0".
		return
;
Tecl_ConvierteOrdenEnHex	;Según el teclado utilizado resulta:
		addwf	PCL,F
		DT	1h,2h,3h,0Fh		;Primera fila del teclado.
		DT	4h,5h,6h,0Eh		;Segunda fila del teclado
		DT	7h,8h,9h,0Dh		;Tercera fila del teclado.
		DT	0Ah,0h,0Bh,0Ch		;Cuarta fila del teclado.

Teclado_FinTablaHex

	IF (Teclado_FinTablaHex > 0xFF)
		ERROR	"Atención: La tabla ha superado el tamaño de la página de los"
		MESSG	"primeros 256 bytes de memoria ROM. NO funcionará correctamente."
	ENDIF
	


Teclado_Inicializa
		bsf	STATUS,RP0			;Configura las líneas del puerto:
		movlw	b'11110000'			;<RB7:RB4> entradas, <RB3:RB0> salidas
		movwf	TRISB
		bcf	OPTION_REG,NOT_RBPU	;Habilita resistencia de Pull-Up del Puerto B.
		bcf	STATUS,RP0			;Acceso al banco 0.
	call	Teclado_EsperaDejePulsar
	return

Teclado_Comprobacion	EQU	b'11110000'

Teclado_EsperaDejePulsar:
		movlw	Teclado_Comprobacion	;Pone a cero las cuatro líneas de salida del 
		movwf	PORTB					;Puerto B.
Teclado_SigueEsperando
		call	Retardo_20ms			;Espera a que se estabilicen los niveles de tensión.
		movf	PORTB,W					;Lee el Puerto B.
		sublw	Teclado_Comprobacion	;Si es lo mismo que escribió es que ya no pulsa 
		btfss	STATUS,Z				;tecla alguna.
		goto	Teclado_SigueEsperando
		return

Teclado_LeeOrdenTecla:
		clrf	Tecl_TeclaOrden		;Todavía no ha empezado a chequear el teclado.
		movlw	b'11111110'			;Va a chequear primera fila.
Tecl_ChequeaFila					;(Ver esquema de conexión).
		movwf	PORTB				;Activa la fila correspondiente.
Tecl_Columna1
		btfss	PORTB,4				;Chequea la 1ª columna buscando un cero. 
		goto	Tecl_GuardaValor	;Sí, es cero y por tanto guarda su valor y sale.
		incf	Tecl_TeclaOrden,F	;Va a chequear la siguiente tecla.
Tecl_Columna2			;Repite proceso para las siguientes columnas
		btfss	PORTB,5
		goto	Tecl_GuardaValor
		incf	Tecl_TeclaOrden,F
Tecl_Columna3		
		btfss	PORTB,6
		goto	Tecl_GuardaValor
		incf	Tecl_TeclaOrden,F
Tecl_Columna4		
		btfss	PORTB,7
		goto	Tecl_GuardaValor
		incf	Tecl_TeclaOrden,F

Tecl_TerminaColumnas
		movlw	Tecl_UltimaTecla
		subwf	Tecl_TeclaOrden,W		;(W) = (Tecl_TeclaOrden)-Tecl_UltimaTecla.
		btfsc	STATUS,C				;¿C=0?, ¿(W) negativo?, ¿(Tecl_TeclaOrden)<15?
		goto	Tecl_NoPulsada			;No, se ha llegado al final del chequeo.
		bsf	STATUS,C				;Sí. Va a chequear la siguiente fila.
		rlf	PORTB,W					;Apunta a la siguiente fila.
		goto	Tecl_ChequeaFila	
Tecl_NoPulsada
		bcf	STATUS,C			;Posiciona C=0, indicando que no ha pulsado
		goto	Tecl_FinTecladoLee	;tecla alguna y sale.
Tecl_GuardaValor
		movf	Tecl_TeclaOrden,W	;El orden de la tecla pulsada en (W) y sale.
		bsf	STATUS,C			;Como hay tecla tecla pulsada, pone C=1. 
Tecl_FinTecladoLee
		return
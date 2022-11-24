	CBLOCK
	LCD_Dato
	LCD_GuardaDato
	LCD_GuardaTRISB
	LCD_Auxiliar1
	LCD_Auxiliar2
	ENDC
LCD_CaracteresPorLinea	EQU	.16
#DEFINE  LCD_PinRS	PORTA,0
#DEFINE  LCD_PinRW	PORTA,1
#DEFINE  LCD_PinEnable	PORTA,2
#DEFINE  LCD_BusDatos	PORTB
LCD_Inicializa
	bsf	STATUS,RP0
	bcf	LCD_PinRS
	bcf	LCD_PinEnable
	bcf	LCD_PinRW
	bcf	STATUS,RP0
	bcf	LCD_PinRW
	bcf	LCD_PinEnable
	bcf 	LCD_PinRS
	call	Retardo_20ms
	movlw	b'00110000'	
	call	LCD_EscribeLCD
	call	Retardo_5ms
	movlw	b'00110000'
	call	LCD_EscribeLCD
	call	Retardo_200micros
	movlw	b'00110000'
	call	LCD_EscribeLCD
	movlw	b'00100000'
	call	LCD_EscribeLCD
	call	LCD_2Lineas4Bits5x7
	call	LCD_Borra
	call	LCD_CursorOFF
	call	LCD_CursorIncr
	return
LCD_EscribeLCD
	andlw	b'11110000'
	movwf	LCD_Dato
	movf	LCD_BusDatos,W
	andlw	b'00001111'
	iorwf	LCD_Dato,F
	bsf	STATUS,RP0
	movf	TRISB,W
	movwf	LCD_GuardaTRISB
	movlw	b'00001111'
	andwf	PORTB,F
	bcf	STATUS,RP0
	movf	LCD_Dato,W
	movwf	LCD_BusDatos
	bsf	LCD_PinEnable
	bcf	LCD_PinEnable
	bsf	STATUS,RP0
	movf	LCD_GuardaTRISB,W
	movwf	PORTB
	bcf	STATUS,RP0
	return
LCD_CursorIncr
	movlw	b'00000110'
	goto	LCD_EnviaComando
LCD_Linea1
	movlw	b'10000000'
	goto	LCD_EnviaComando
LCD_Linea2
	movlw	b'11000000'
	goto	LCD_EnviaComando
LCD_PosicionLinea1
	iorlw	b'10000000'
	goto	LCD_EnviaComando
LCD_PosicionLinea2
	iorlw	b'11000000'
	goto	LCD_EnviaComando
LCD_OFF
	movlw	b'00001000'
	goto	LCD_EnviaComando
LCD_CursorON
	movlw	b'00001110'
	goto	LCD_EnviaComando
LCD_CursorOFF
	movlw	b'00001100'
	goto	LCD_EnviaComando
LCD_Borra
	movlw	b'00000001'
	goto	LCD_EnviaComando
LCD_2Lineas4Bits5x7
	movlw	b'00101000'
;	goto	LCD_EnviaComando
LCD_EnviaComando
	bcf	LCD_PinRS
	goto	LCD_Envia
LCD_Caracter
	bsf	LCD_PinRS
	call	LCD_CodigoCGROM
LCD_Envia
	movwf	LCD_GuardaDato
	call	LCD_EscribeLCD
	swapf	LCD_GuardaDato,W
	call	LCD_EscribeLCD
	btfss	LCD_PinRS
	call	Retardo_2ms
	call	Retardo_50micros
	return	
LCD_CodigoCGROM
	movwf	LCD_Dato
LCD_EnheMinuscula
	sublw	'ñ'
	btfss	STATUS,Z
	goto	LCD_EnheMayuscula
	movlw	b'11101110'
	movwf	LCD_Dato
	goto	LCD_FinCGROM
LCD_EnheMayuscula
	movf	LCD_Dato,W
	sublw	'Ñ'
	btfss	STATUS,Z
	goto	LCD_Grado
	movlw	b'11101110'
	movwf	LCD_Dato
	goto	LCD_FinCGROM	
LCD_Grado
	movf	LCD_Dato,W
	sublw	'º'
	btfss	STATUS,Z
	goto	LCD_FinCGROM
	movlw	b'11011111'
	movwf	LCD_Dato
LCD_FinCGROM
	movf	LCD_Dato,W
	return
LCD_LineaEnBlanco
	movlw	LCD_CaracteresPorLinea
	goto	LCD_EnviaBlancos
LCD_UnEspacioBlanco
	movlw	.1
	goto	LCD_EnviaBlancos
LCD_DosEspaciosBlancos
	movlw	.2
	goto	LCD_EnviaBlancos
LCD_TresEspaciosBlancos
	movlw	.3
LCD_EnviaBlancos
	movwf	LCD_Auxiliar1
LCD_EnviaOtroBlanco	
	movlw	' '
	call	LCD_Caracter
	decfsz	LCD_Auxiliar1,F
	goto	LCD_EnviaOtroBlanco
	return
LCD_Byte
	movwf	LCD_Auxiliar2
	andlw	b'11110000'
	btfss	STATUS,Z
	goto	LCD_VisualizaAlto
	movlw	' '
	call	LCD_Caracter
	goto	LCD_VisualizaBajo
LCD_ByteCompleto
	movwf	LCD_Auxiliar2
LCD_VisualizaAlto
	swapf	LCD_Auxiliar2,W
	call	LCD_Nibble
LCD_VisualizaBajo
	movf	LCD_Auxiliar2,W
;	call	LCD_Nibble
;	return
LCD_Nibble
	andlw	b'00001111'
	movwf	LCD_Auxiliar1
	sublw	0x09
	btfss	STATUS,C
	goto	LCD_EnviaByteLetra
	movf	LCD_Auxiliar1,W
	addlw	'0'
	goto 	LCD_FinVisualizaDigito
LCD_EnviaByteLetra
	movf	LCD_Auxiliar1,W
	addlw	'A'-0x0A
LCD_FinVisualizaDigito
	goto	LCD_Caracter
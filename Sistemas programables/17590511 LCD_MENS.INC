	CBLOCK	
	LCD_ApuntaCaracter
	LCD_ValorCaracter
	ENDC
LCD_Mensaje
	movwf	LCD_ApuntaCaracter
	movlw	Mensajes
	subwf	LCD_ApuntaCaracter,F
	decf	LCD_ApuntaCaracter,F
LCD_VisualizaOtroCaracter
	movf	LCD_ApuntaCaracter,W
	call	Mensajes
	movwf	LCD_ValorCaracter
	movf	LCD_ValorCaracter,F
	btfsc	STATUS,Z
	goto	LCD_FinMensaje
LCD_NoUltimoCaracter
	call	LCD_Caracter
	incf	LCD_ApuntaCaracter,F
	goto	LCD_VisualizaOtroCaracter
LCD_FinMensaje
	return
	CBLOCK
	LCD_CursorPosicion
	ENDC
LCD_MensajeMovimiento
	movwf	LCD_ApuntaCaracter
	movlw	Mensajes
	subwf	LCD_ApuntaCaracter,F
	decf	LCD_ApuntaCaracter,F
LCD_PrimeraPosicion
	clrf	LCD_CursorPosicion
	call	LCD_Borra
LCD_VisualizaCaracter
	movlw	LCD_CaracteresPorLinea
	subwf	LCD_CursorPosicion,W
	btfss	STATUS,Z
	goto	LCD_NoEsFinalLinea
LCD_EsFinalLinea
	call	Retardo_200ms
	call	Retardo_200ms
	movlw	LCD_CaracteresPorLinea-1
	subwf	LCD_ApuntaCaracter,F
	goto	LCD_PrimeraPosicion
LCD_NoEsFinalLinea
	movf	LCD_ApuntaCaracter,W
	call	Mensajes
	movwf	LCD_ValorCaracter
	movf	LCD_ValorCaracter,F
	btfsc	STATUS,Z
	goto	LCD_FinMovimiento
LCD_NoUltimoCaracter2
	call	LCD_Caracter
	incf	LCD_CursorPosicion,F
	incf	LCD_ApuntaCaracter,F
	goto	LCD_VisualizaCaracter
LCD_FinMovimiento
	return
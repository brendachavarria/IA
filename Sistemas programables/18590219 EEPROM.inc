EEPROM_LeeDato
	bcf	STATUS,RP0		
	movwf	EEADR		
	bsf	STATUS,RP0		
	bsf	EECON1,RD		
EEPROM_SigueLeyendo
	btfsc	EECON1,RD	
	goto	EEPROM_SigueLeyendo	
	bcf	STATUS,RP0		
	movf	EEDATA,W	
	return

	CBLOCK
	EEPROM_GuardaINTCON
	ENDC

EEPROM_EscribeDato
	bcf	STATUS,RP0		
	movwf	EEDATA		
	movf	INTCON,W	
	movwf	EEPROM_GuardaINTCON
	bsf	STATUS,RP0		
	bcf	INTCON,GIE		
	bsf	EECON1,WREN		

	movlw	0x55
	movwf	EECON2
	movlw	0xAA
	movwf	EECON2
	bsf	EECON1,WR		
EEPROM_TerminaEscribir
	btfsc	EECON1,WR	
	goto	EEPROM_TerminaEscribir
	bcf	EECON1,WREN		
	bcf	EECON1,EEIF		
	bcf	STATUS,RP0		
	movf	EEPROM_GuardaINTCON,W 
	movwf	INTCON
	return

	CBLOCK
	R_ContA
	R_ContB
	R_ContC
	ENDC
;----------------------------------------
Retardo_10micros
	nop
	nop
	nop
	nop
	nop
Retardo_5micros
	nop
Retardo_4micros
	return
;----------------------------------------
Retardo_500micros
	nop
	movlw	d'164'
	goto	RetardoMicros
Retardo_200micros
	nop
	movlw	d'64'
	goto	RetardoMicros
Retardo_100micros
	movlw	d'31'
	goto	RetardoMicros
Retardos_50micros
	nop
	movlw	d'14'
	goto 	RetardoMicros
Retardo_20micros
	movlw	d'5'

RetardoMicros
	movwf	R_ContA
Rmicros_Bucle
	decfsz	R_ContA,F
	goto 	Rmicros_Bucle
	return
;----------------------------------------
Retardo_200ms
	movlw	d'200'
	goto	Retardos_ms
Retardo_100ms
	movlw	d'100'
	goto	Retardos_ms
Retardo_50ms
	movlw	d'50'
	goto	Retardos_ms
Retardo_20ms
	movlw	d'20'
	goto	Retardos_ms
Retardo_10ms
	movlw	d'10'
	goto	Retardos_ms
Retardo_5ms
	movlw	d'5'
	goto	Retardos_ms
Retardo_2ms
	movlw	d'2'
	goto	Retardos_ms
Retardo_1ms
	movlw	d'1'
	goto	Retardos_ms

Retardos_ms
	movwf	R_ContB
Rlms_BucleExterno
	movlw	d'249'
	movwf	R_ContA
Rlms_BucleInterno
	nop
	decfsz	R_ContA,F
	goto	Rlms_BucleInterno
	decfsz	R_ContB,F
	goto	Rlms_BucleExterno
	return
;----------------------------------------

Retardo_20s
	movlw	d'200'
	goto	Retardo_lDecima
Retardo_10s
	movlw	d'100'
	goto	Retardo_lDecima
Retardo_5s
	movlw	d'50'
	goto	Retardo_lDecima
Retardo_2s
	movlw	d'20'
	goto	Retardo_lDecima
Retardo_1s
	movlw	d'10'
	goto	Retardo_lDecima
Retardo_500ms
	movlw	d'5'
Retardo_lDecima
	movwf	R_ContC
RlDecima_BucleExterno2
	movlw	d'100'
	movwf	R_ContB
RlDecima_BucleExterno
	movlw	d'249'
	movwf	R_ContA
RlDecima_BucleInterno
	nop
	decfsz	R_ContA,F
	goto	RlDecima_BucleInterno
	decfsz	R_ContB,F
	goto	RlDecima_BucleExterno
	decfsz	R_ContC,F
	goto	RlDecima_BucleExterno2
	return
	__CONFIG _CP_OFF&_WDT_OFF&_PWRTE_ON&_LVP_OFF&_MCLRE_OFF&_INTOSC_OSC_CLKOUT
	LIST	P=16F628A
	INCLUDE <P16F628A.INC>
		
		ORG	0
Inicio
		bsf	STATUS,RP0
		clrf	TRISB
		movlw	b'00011111'
		movwf	TRISA
		bcf		STATUS,RP0
Principal
		movf	PORTA,W
		andlw	b'00000111'
		addwf	PCL,F
Tabla
		goto	Configuracion0
		goto	Configuracion1
		goto	Configuracion2
		goto	Configuracion3
		goto	Configuracion4
		goto	Configuracion5
		goto	Configuracion6
		goto	Configuracion7
Configuracion0	
		movlw	b'00001010'
		goto	ActivaSalida
Configuracion1	
		movlw	b'00001001'
		goto	ActivaSalida
Configuracion2	
		movlw	b'00100011'
		goto	ActivaSalida
Configuracion3	
		movlw	b'00001111'
		goto	ActivaSalida
Configuracion4	
		movlw	b'00100000'
		goto	ActivaSalida
Configuracion5	
		movlw	b'00000111'
		goto	ActivaSalida
Configuracion6	
		movlw	b'00010111'
		goto	ActivaSalida
Configuracion7	
		movlw	b'00111111'
ActivaSalida
		movwf	PORTB
		goto	Principal
		
		END
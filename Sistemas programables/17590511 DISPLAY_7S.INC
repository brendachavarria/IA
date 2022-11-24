	CBLOCK
	Display7s_Dato
	ENDC	
Numero_a_7Segmentos
	andlw	b'00001111'
	addlw	'0'
ASCII_a_7Segmentos
	movwf	Display7s_Dato
	sublw	' '
	btfsc	STATUS,Z
	retlw	00h
	movf	Display7s_Dato,W
	sublw	'Ñ'
	btfsc	STATUS,Z
	retlw	55h
	movf	Display7s_Dato,W
	sublw	'º'
	btfsc	STATUS,Z
	retlw	63h
	movf	Display7s_Dato,W
	sublw	'Z'
	btfss	STATUS,C
	retlw	b'10000000'
	movlw	'+'
	subwf	Display7s_Dato,W
	btfss	STATUS,C
	retlw	b'10000000'
	addwf	PCL,F
InicioTablaASCII
	DT	46h, 04h, 40h, 80h, 00h, 3Fh, 06h, 5Bh, 4Fh, 66h, 6Dh
	DT	7Dh, 07h, 7Fh, 67h, 41h, 88h, 00h, 48h, 00h, 00h, 00h
	DT	77h, 7Ch, 39h, 5Eh, 79h, 71h, 6Fh, 76h, 19h, 1Eh, 7Ah, 38h, 37h
	DT	54h, 3Fh, 73h, 67h, 50h, 6Dh, 78h, 1Ch, 3Eh, 1Dh, 70h, 6Eh, 49h
FinTablaASCII
	IF (FinTablaASCII > 0xFF)
		ERROR	"¡CUIDADO!: La tabla ha superado el tamaño de la página de los"
		MESSG	"primeros 256 bytes de memoria ROM. NO funcionará correctamente."
	ENDIF
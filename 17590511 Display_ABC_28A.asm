	__CONFIG   _CP_OFF &  _WDT_OFF & _PWRTE_ON & _XT_OSC
	LIST	  P=16F628A
	INCLUDE  <P16F628A.INC>
      CBLOCK 0x0C
      ENDC
PDel0     EQU 0C
PDel1     EQU 0D
Caracter  EQU .0
	ORG 0
Inicio   
     bsf STATUS,RP0
     clrf TRISB
     bcf STATUS,RP0
Principal
     movlw .43
     addwf Caracter,W
     call  ASCII_a_7Segmentos
     movwf PORTB
     call  pausa 
     incf  Caracter,F
     movlw .48
     subwf Caracter,W 
     btfsc STATUS,C
     clrf  Caracter
     goto  Principal
     ;INCLUDE <DISPLAY_7S.INC>
	INCLUDE "T:\SISTEMAS PROGRAMABLES\Programas\DISPLAY_7S.INC"
pausa
        movlw     .152
        movwf     PDel0
PLoop1  movlw     .150
        movwf     PDel1
PLoop2  clrwdt
PDelL1  goto PDelL2
PDelL2  goto PDelL3
PDelL3  clrwdt
        decfsz    PDel1, 1
        goto      PLoop2
        decfsz    PDel0,  1
        goto      PLoop1
PDelL4  goto PDelL5
PDelL5  goto PDelL6
PDelL6  goto PDelL7
PDelL7  clrwdt
	return
     END
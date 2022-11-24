
_Binario_a_7Segmentos:

;Display_01.c,1 :: 		int Binario_a_7Segmentos(int i) {
;Display_01.c,2 :: 		int j[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
	MOVLW      63
	MOVWF      Binario_a_7Segmentos_j_L0+0
	MOVLW      0
	MOVWF      Binario_a_7Segmentos_j_L0+1
	MOVLW      6
	MOVWF      Binario_a_7Segmentos_j_L0+2
	MOVLW      0
	MOVWF      Binario_a_7Segmentos_j_L0+3
	MOVLW      91
	MOVWF      Binario_a_7Segmentos_j_L0+4
	MOVLW      0
	MOVWF      Binario_a_7Segmentos_j_L0+5
	MOVLW      79
	MOVWF      Binario_a_7Segmentos_j_L0+6
	MOVLW      0
	MOVWF      Binario_a_7Segmentos_j_L0+7
	MOVLW      102
	MOVWF      Binario_a_7Segmentos_j_L0+8
	MOVLW      0
	MOVWF      Binario_a_7Segmentos_j_L0+9
	MOVLW      109
	MOVWF      Binario_a_7Segmentos_j_L0+10
	MOVLW      0
	MOVWF      Binario_a_7Segmentos_j_L0+11
	MOVLW      125
	MOVWF      Binario_a_7Segmentos_j_L0+12
	MOVLW      0
	MOVWF      Binario_a_7Segmentos_j_L0+13
	MOVLW      7
	MOVWF      Binario_a_7Segmentos_j_L0+14
	MOVLW      0
	MOVWF      Binario_a_7Segmentos_j_L0+15
	MOVLW      127
	MOVWF      Binario_a_7Segmentos_j_L0+16
	MOVLW      0
	MOVWF      Binario_a_7Segmentos_j_L0+17
	MOVLW      103
	MOVWF      Binario_a_7Segmentos_j_L0+18
	MOVLW      0
	MOVWF      Binario_a_7Segmentos_j_L0+19
	MOVLW      119
	MOVWF      Binario_a_7Segmentos_j_L0+20
	MOVLW      0
	MOVWF      Binario_a_7Segmentos_j_L0+21
	MOVLW      124
	MOVWF      Binario_a_7Segmentos_j_L0+22
	MOVLW      0
	MOVWF      Binario_a_7Segmentos_j_L0+23
	MOVLW      57
	MOVWF      Binario_a_7Segmentos_j_L0+24
	MOVLW      0
	MOVWF      Binario_a_7Segmentos_j_L0+25
	MOVLW      94
	MOVWF      Binario_a_7Segmentos_j_L0+26
	MOVLW      0
	MOVWF      Binario_a_7Segmentos_j_L0+27
	MOVLW      121
	MOVWF      Binario_a_7Segmentos_j_L0+28
	MOVLW      0
	MOVWF      Binario_a_7Segmentos_j_L0+29
	MOVLW      113
	MOVWF      Binario_a_7Segmentos_j_L0+30
	MOVLW      0
	MOVWF      Binario_a_7Segmentos_j_L0+31
;Display_01.c,3 :: 		return j[i];
	MOVF       FARG_Binario_a_7Segmentos_i+0, 0
	MOVWF      R0+0
	MOVF       FARG_Binario_a_7Segmentos_i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      Binario_a_7Segmentos_j_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R0+1
;Display_01.c,4 :: 		}
L_end_Binario_a_7Segmentos:
	RETURN
; end of _Binario_a_7Segmentos

_main:

;Display_01.c,6 :: 		void main() {
;Display_01.c,7 :: 		TRISB = 0;
	CLRF       TRISB+0
;Display_01.c,8 :: 		TRISA = 31;
	MOVLW      31
	MOVWF      TRISA+0
;Display_01.c,9 :: 		do {
L_main0:
;Display_01.c,10 :: 		PORTB = Binario_a_7Segmentos(PORTA);
	MOVF       PORTA+0, 0
	MOVWF      FARG_Binario_a_7Segmentos_i+0
	CLRF       FARG_Binario_a_7Segmentos_i+1
	CALL       _Binario_a_7Segmentos+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Display_01.c,11 :: 		}while(1);
	GOTO       L_main0
;Display_01.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

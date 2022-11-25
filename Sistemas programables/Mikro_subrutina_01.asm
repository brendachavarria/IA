
_BIN_a_BCD:

;Mikro_subrutina_01.c,2 :: 		int BIN_a_BCD (int num){
;Mikro_subrutina_01.c,3 :: 		short Millares=0, Centenas=0, Decenas=0, Unidades=0;
	CLRF       BIN_a_BCD_Centenas_L0+0
	CLRF       BIN_a_BCD_Decenas_L0+0
	CLRF       BIN_a_BCD_Unidades_L0+0
;Mikro_subrutina_01.c,5 :: 		Unidades=num;
	MOVF       FARG_BIN_a_BCD_num+0, 0
	MOVWF      BIN_a_BCD_Unidades_L0+0
;Mikro_subrutina_01.c,6 :: 		while(Unidades>=10){
L_BIN_a_BCD0:
	MOVLW      128
	XORWF      BIN_a_BCD_Unidades_L0+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      10
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_BIN_a_BCD1
;Mikro_subrutina_01.c,7 :: 		Unidades=Unidades-10;
	MOVLW      10
	SUBWF      BIN_a_BCD_Unidades_L0+0, 1
;Mikro_subrutina_01.c,8 :: 		Decenas++;
	INCF       BIN_a_BCD_Decenas_L0+0, 1
;Mikro_subrutina_01.c,9 :: 		if(Decenas==10){
	MOVF       BIN_a_BCD_Decenas_L0+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_BIN_a_BCD2
;Mikro_subrutina_01.c,10 :: 		Decenas=0;
	CLRF       BIN_a_BCD_Decenas_L0+0
;Mikro_subrutina_01.c,11 :: 		Centenas++;
	INCF       BIN_a_BCD_Centenas_L0+0, 1
;Mikro_subrutina_01.c,12 :: 		if(Centenas==10){
	MOVF       BIN_a_BCD_Centenas_L0+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_BIN_a_BCD3
;Mikro_subrutina_01.c,13 :: 		Centenas=0;
	CLRF       BIN_a_BCD_Centenas_L0+0
;Mikro_subrutina_01.c,15 :: 		}
L_BIN_a_BCD3:
;Mikro_subrutina_01.c,16 :: 		}
L_BIN_a_BCD2:
;Mikro_subrutina_01.c,17 :: 		}
	GOTO       L_BIN_a_BCD0
L_BIN_a_BCD1:
;Mikro_subrutina_01.c,20 :: 		aux=Decenas<<4;
	MOVLW      4
	MOVWF      R2+0
	MOVF       BIN_a_BCD_Decenas_L0+0, 0
	MOVWF      R0+0
	MOVLW      0
	BTFSC      R0+0, 7
	MOVLW      255
	MOVWF      R0+1
	MOVF       R2+0, 0
L__BIN_a_BCD8:
	BTFSC      STATUS+0, 2
	GOTO       L__BIN_a_BCD9
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__BIN_a_BCD8
L__BIN_a_BCD9:
;Mikro_subrutina_01.c,21 :: 		aux=aux+Unidades;
	MOVF       BIN_a_BCD_Unidades_L0+0, 0
	ADDWF      R0+0, 1
	BTFSC      STATUS+0, 0
	INCF       R0+1, 1
	MOVLW      0
	BTFSC      BIN_a_BCD_Unidades_L0+0, 7
	MOVLW      255
	ADDWF      R0+1, 1
;Mikro_subrutina_01.c,22 :: 		return(aux);
;Mikro_subrutina_01.c,23 :: 		}
L_end_BIN_a_BCD:
	RETURN
; end of _BIN_a_BCD

_main:

;Mikro_subrutina_01.c,24 :: 		void main() {
;Mikro_subrutina_01.c,25 :: 		TRISB=0;
	CLRF       TRISB+0
;Mikro_subrutina_01.c,26 :: 		do{
L_main4:
;Mikro_subrutina_01.c,27 :: 		PORTB=BIN_a_BCD (Numero);
	MOVF       _Numero+0, 0
	MOVWF      FARG_BIN_a_BCD_num+0
	MOVF       _Numero+1, 0
	MOVWF      FARG_BIN_a_BCD_num+1
	CALL       _BIN_a_BCD+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Mikro_subrutina_01.c,28 :: 		}while (1);
	GOTO       L_main4
;Mikro_subrutina_01.c,29 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

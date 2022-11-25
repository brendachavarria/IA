
_BIN_a_BCD:

;Mikro_subrutina_01_877A.c,2 :: 		int BIN_a_BCD (int *num1, int *num2){
;Mikro_subrutina_01_877A.c,3 :: 		int Millares=0, Centenas=0, Decenas=0, Unidades=0;
	CLRF       BIN_a_BCD_Millares_L0+0
	CLRF       BIN_a_BCD_Millares_L0+1
	CLRF       BIN_a_BCD_Centenas_L0+0
	CLRF       BIN_a_BCD_Centenas_L0+1
	CLRF       BIN_a_BCD_Decenas_L0+0
	CLRF       BIN_a_BCD_Decenas_L0+1
	CLRF       BIN_a_BCD_Unidades_L0+0
	CLRF       BIN_a_BCD_Unidades_L0+1
;Mikro_subrutina_01_877A.c,5 :: 		Unidades=*num1;
	MOVF       FARG_BIN_a_BCD_num1+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      BIN_a_BCD_Unidades_L0+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      BIN_a_BCD_Unidades_L0+1
;Mikro_subrutina_01_877A.c,6 :: 		while(Unidades>=10){
L_BIN_a_BCD0:
	MOVLW      128
	XORWF      BIN_a_BCD_Unidades_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__BIN_a_BCD8
	MOVLW      10
	SUBWF      BIN_a_BCD_Unidades_L0+0, 0
L__BIN_a_BCD8:
	BTFSS      STATUS+0, 0
	GOTO       L_BIN_a_BCD1
;Mikro_subrutina_01_877A.c,7 :: 		Unidades=Unidades-10;
	MOVLW      10
	SUBWF      BIN_a_BCD_Unidades_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       BIN_a_BCD_Unidades_L0+1, 1
;Mikro_subrutina_01_877A.c,8 :: 		Decenas++;
	INCF       BIN_a_BCD_Decenas_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       BIN_a_BCD_Decenas_L0+1, 1
;Mikro_subrutina_01_877A.c,9 :: 		if(Decenas>=10){
	MOVLW      128
	XORWF      BIN_a_BCD_Decenas_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__BIN_a_BCD9
	MOVLW      10
	SUBWF      BIN_a_BCD_Decenas_L0+0, 0
L__BIN_a_BCD9:
	BTFSS      STATUS+0, 0
	GOTO       L_BIN_a_BCD2
;Mikro_subrutina_01_877A.c,10 :: 		Decenas=0;
	CLRF       BIN_a_BCD_Decenas_L0+0
	CLRF       BIN_a_BCD_Decenas_L0+1
;Mikro_subrutina_01_877A.c,11 :: 		Centenas++;
	INCF       BIN_a_BCD_Centenas_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       BIN_a_BCD_Centenas_L0+1, 1
;Mikro_subrutina_01_877A.c,12 :: 		}
L_BIN_a_BCD2:
;Mikro_subrutina_01_877A.c,13 :: 		if(Centenas>=10){
	MOVLW      128
	XORWF      BIN_a_BCD_Centenas_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__BIN_a_BCD10
	MOVLW      10
	SUBWF      BIN_a_BCD_Centenas_L0+0, 0
L__BIN_a_BCD10:
	BTFSS      STATUS+0, 0
	GOTO       L_BIN_a_BCD3
;Mikro_subrutina_01_877A.c,14 :: 		Centenas=0;
	CLRF       BIN_a_BCD_Centenas_L0+0
	CLRF       BIN_a_BCD_Centenas_L0+1
;Mikro_subrutina_01_877A.c,15 :: 		Millares++;
	INCF       BIN_a_BCD_Millares_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       BIN_a_BCD_Millares_L0+1, 1
;Mikro_subrutina_01_877A.c,16 :: 		}
L_BIN_a_BCD3:
;Mikro_subrutina_01_877A.c,17 :: 		}
	GOTO       L_BIN_a_BCD0
L_BIN_a_BCD1:
;Mikro_subrutina_01_877A.c,19 :: 		aux1=Millares<<4;
	MOVLW      4
	MOVWF      R2+0
	MOVF       BIN_a_BCD_Millares_L0+0, 0
	MOVWF      R0+0
	MOVF       BIN_a_BCD_Millares_L0+1, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__BIN_a_BCD11:
	BTFSC      STATUS+0, 2
	GOTO       L__BIN_a_BCD12
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__BIN_a_BCD11
L__BIN_a_BCD12:
;Mikro_subrutina_01_877A.c,20 :: 		aux1=aux1+Centenas;
	MOVF       BIN_a_BCD_Centenas_L0+0, 0
	ADDWF      R0+0, 1
	MOVF       BIN_a_BCD_Centenas_L0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
;Mikro_subrutina_01_877A.c,21 :: 		*num2=aux1;
	MOVF       FARG_BIN_a_BCD_num2+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVF       R0+1, 0
	INCF       FSR, 1
	MOVWF      INDF+0
;Mikro_subrutina_01_877A.c,23 :: 		aux2=Decenas<<4;
	MOVLW      4
	MOVWF      R2+0
	MOVF       BIN_a_BCD_Decenas_L0+0, 0
	MOVWF      R0+0
	MOVF       BIN_a_BCD_Decenas_L0+1, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__BIN_a_BCD13:
	BTFSC      STATUS+0, 2
	GOTO       L__BIN_a_BCD14
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__BIN_a_BCD13
L__BIN_a_BCD14:
;Mikro_subrutina_01_877A.c,24 :: 		aux2=aux2+Unidades;
	MOVF       BIN_a_BCD_Unidades_L0+0, 0
	ADDWF      R0+0, 1
	MOVF       BIN_a_BCD_Unidades_L0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
;Mikro_subrutina_01_877A.c,25 :: 		*num1=aux2;
	MOVF       FARG_BIN_a_BCD_num1+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVF       R0+1, 0
	INCF       FSR, 1
	MOVWF      INDF+0
;Mikro_subrutina_01_877A.c,26 :: 		}
L_end_BIN_a_BCD:
	RETURN
; end of _BIN_a_BCD

_main:

;Mikro_subrutina_01_877A.c,28 :: 		void main() {
;Mikro_subrutina_01_877A.c,29 :: 		int pc=0, pd;
	CLRF       main_pc_L0+0
	CLRF       main_pc_L0+1
;Mikro_subrutina_01_877A.c,30 :: 		TRISC=0;
	CLRF       TRISC+0
;Mikro_subrutina_01_877A.c,31 :: 		TRISD=0;
	CLRF       TRISD+0
;Mikro_subrutina_01_877A.c,32 :: 		do{
L_main4:
;Mikro_subrutina_01_877A.c,33 :: 		pc=Numero;
	MOVF       _Numero+0, 0
	MOVWF      main_pc_L0+0
	MOVF       _Numero+1, 0
	MOVWF      main_pc_L0+1
;Mikro_subrutina_01_877A.c,34 :: 		BIN_a_BCD (&pc,&pd);
	MOVLW      main_pc_L0+0
	MOVWF      FARG_BIN_a_BCD_num1+0
	MOVLW      main_pd_L0+0
	MOVWF      FARG_BIN_a_BCD_num2+0
	CALL       _BIN_a_BCD+0
;Mikro_subrutina_01_877A.c,35 :: 		PORTC=pc;//&0b0000000011111111;
	MOVF       main_pc_L0+0, 0
	MOVWF      PORTC+0
;Mikro_subrutina_01_877A.c,36 :: 		PORTD=pd;//&0b1111111100000000;
	MOVF       main_pd_L0+0, 0
	MOVWF      PORTD+0
;Mikro_subrutina_01_877A.c,37 :: 		}while (1);
	GOTO       L_main4
;Mikro_subrutina_01_877A.c,38 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

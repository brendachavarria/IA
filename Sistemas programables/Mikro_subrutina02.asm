
_bin_a_bcd:

;bin_a_bcd.h,1 :: 		int bin_a_bcd (int num){
;bin_a_bcd.h,2 :: 		unsigned short Millares=0,Centenas=0,Decenas=0,Unidades;
	CLRF       bin_a_bcd_Centenas_L0+0
	CLRF       bin_a_bcd_Decenas_L0+0
;bin_a_bcd.h,4 :: 		Unidades=num;
	MOVF       FARG_bin_a_bcd_num+0, 0
	MOVWF      R3+0
;bin_a_bcd.h,5 :: 		while(Unidades >= 10){
L_bin_a_bcd0:
	MOVLW      10
	SUBWF      R3+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_bin_a_bcd1
;bin_a_bcd.h,6 :: 		Unidades = Unidades - 10;
	MOVLW      10
	SUBWF      R3+0, 1
;bin_a_bcd.h,7 :: 		Decenas++;
	INCF       bin_a_bcd_Decenas_L0+0, 1
;bin_a_bcd.h,8 :: 		if(decenas == 10){
	MOVF       bin_a_bcd_Decenas_L0+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_bin_a_bcd2
;bin_a_bcd.h,9 :: 		Decenas = 0;
	CLRF       bin_a_bcd_Decenas_L0+0
;bin_a_bcd.h,10 :: 		Centenas++;
	INCF       bin_a_bcd_Centenas_L0+0, 1
;bin_a_bcd.h,11 :: 		if(centenas == 10){
	MOVF       bin_a_bcd_Centenas_L0+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_bin_a_bcd3
;bin_a_bcd.h,12 :: 		Centenas=0;
	CLRF       bin_a_bcd_Centenas_L0+0
;bin_a_bcd.h,14 :: 		}
L_bin_a_bcd3:
;bin_a_bcd.h,15 :: 		}
L_bin_a_bcd2:
;bin_a_bcd.h,16 :: 		}
	GOTO       L_bin_a_bcd0
L_bin_a_bcd1:
;bin_a_bcd.h,19 :: 		aux=Decenas<<4;
	MOVLW      4
	MOVWF      R2+0
	MOVF       bin_a_bcd_Decenas_L0+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	MOVF       R2+0, 0
L__bin_a_bcd8:
	BTFSC      STATUS+0, 2
	GOTO       L__bin_a_bcd9
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__bin_a_bcd8
L__bin_a_bcd9:
;bin_a_bcd.h,20 :: 		aux=aux+Unidades;
	MOVF       R3+0, 0
	ADDWF      R0+0, 1
	BTFSC      STATUS+0, 0
	INCF       R0+1, 1
;bin_a_bcd.h,21 :: 		return(aux);
;bin_a_bcd.h,22 :: 		}
L_end_bin_a_bcd:
	RETURN
; end of _bin_a_bcd

_main:

;Mikro_subrutina02.c,3 :: 		void main() {
;Mikro_subrutina02.c,4 :: 		TRISB=0;
	CLRF       TRISB+0
;Mikro_subrutina02.c,5 :: 		do{
L_main4:
;Mikro_subrutina02.c,6 :: 		PORTB =  bin_a_bcd(Numero);
	MOVF       _Numero+0, 0
	MOVWF      FARG_bin_a_bcd_num+0
	MOVF       _Numero+1, 0
	MOVWF      FARG_bin_a_bcd_num+1
	CALL       _bin_a_bcd+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Mikro_subrutina02.c,7 :: 		}while(1);
	GOTO       L_main4
;Mikro_subrutina02.c,8 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

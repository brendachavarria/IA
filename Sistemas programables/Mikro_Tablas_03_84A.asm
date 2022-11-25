
_TablaVerdad:

;Mikro_Tablas_03_84A.c,1 :: 		int TablaVerdad (int W){
;Mikro_Tablas_03_84A.c,2 :: 		switch (W){
	GOTO       L_TablaVerdad0
;Mikro_Tablas_03_84A.c,3 :: 		case 0: return 10;
L_TablaVerdad2:
	MOVLW      10
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_TablaVerdad
;Mikro_Tablas_03_84A.c,4 :: 		case 1: return 9;
L_TablaVerdad3:
	MOVLW      9
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_TablaVerdad
;Mikro_Tablas_03_84A.c,5 :: 		case 2: return 35;
L_TablaVerdad4:
	MOVLW      35
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_TablaVerdad
;Mikro_Tablas_03_84A.c,6 :: 		case 3: return 15;
L_TablaVerdad5:
	MOVLW      15
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_TablaVerdad
;Mikro_Tablas_03_84A.c,7 :: 		case 4: return 32;
L_TablaVerdad6:
	MOVLW      32
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_TablaVerdad
;Mikro_Tablas_03_84A.c,8 :: 		case 5: return 7;
L_TablaVerdad7:
	MOVLW      7
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_TablaVerdad
;Mikro_Tablas_03_84A.c,9 :: 		case 6: return 23;
L_TablaVerdad8:
	MOVLW      23
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_TablaVerdad
;Mikro_Tablas_03_84A.c,10 :: 		case 7: return 63;
L_TablaVerdad9:
	MOVLW      63
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	GOTO       L_end_TablaVerdad
;Mikro_Tablas_03_84A.c,11 :: 		}
L_TablaVerdad0:
	MOVLW      0
	XORWF      FARG_TablaVerdad_W+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__TablaVerdad14
	MOVLW      0
	XORWF      FARG_TablaVerdad_W+0, 0
L__TablaVerdad14:
	BTFSC      STATUS+0, 2
	GOTO       L_TablaVerdad2
	MOVLW      0
	XORWF      FARG_TablaVerdad_W+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__TablaVerdad15
	MOVLW      1
	XORWF      FARG_TablaVerdad_W+0, 0
L__TablaVerdad15:
	BTFSC      STATUS+0, 2
	GOTO       L_TablaVerdad3
	MOVLW      0
	XORWF      FARG_TablaVerdad_W+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__TablaVerdad16
	MOVLW      2
	XORWF      FARG_TablaVerdad_W+0, 0
L__TablaVerdad16:
	BTFSC      STATUS+0, 2
	GOTO       L_TablaVerdad4
	MOVLW      0
	XORWF      FARG_TablaVerdad_W+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__TablaVerdad17
	MOVLW      3
	XORWF      FARG_TablaVerdad_W+0, 0
L__TablaVerdad17:
	BTFSC      STATUS+0, 2
	GOTO       L_TablaVerdad5
	MOVLW      0
	XORWF      FARG_TablaVerdad_W+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__TablaVerdad18
	MOVLW      4
	XORWF      FARG_TablaVerdad_W+0, 0
L__TablaVerdad18:
	BTFSC      STATUS+0, 2
	GOTO       L_TablaVerdad6
	MOVLW      0
	XORWF      FARG_TablaVerdad_W+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__TablaVerdad19
	MOVLW      5
	XORWF      FARG_TablaVerdad_W+0, 0
L__TablaVerdad19:
	BTFSC      STATUS+0, 2
	GOTO       L_TablaVerdad7
	MOVLW      0
	XORWF      FARG_TablaVerdad_W+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__TablaVerdad20
	MOVLW      6
	XORWF      FARG_TablaVerdad_W+0, 0
L__TablaVerdad20:
	BTFSC      STATUS+0, 2
	GOTO       L_TablaVerdad8
	MOVLW      0
	XORWF      FARG_TablaVerdad_W+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__TablaVerdad21
	MOVLW      7
	XORWF      FARG_TablaVerdad_W+0, 0
L__TablaVerdad21:
	BTFSC      STATUS+0, 2
	GOTO       L_TablaVerdad9
;Mikro_Tablas_03_84A.c,12 :: 		}
L_end_TablaVerdad:
	RETURN
; end of _TablaVerdad

_main:

;Mikro_Tablas_03_84A.c,13 :: 		void main() {
;Mikro_Tablas_03_84A.c,15 :: 		TRISA=255;
	MOVLW      255
	MOVWF      TRISA+0
;Mikro_Tablas_03_84A.c,16 :: 		TRISB=0;
	CLRF       TRISB+0
;Mikro_Tablas_03_84A.c,17 :: 		do{
L_main10:
;Mikro_Tablas_03_84A.c,18 :: 		W=PORTA;
	MOVF       PORTA+0, 0
	MOVWF      main_W_L0+0
	CLRF       main_W_L0+1
;Mikro_Tablas_03_84A.c,19 :: 		W=W&7;
	MOVLW      7
	ANDWF      main_W_L0+0, 0
	MOVWF      R0+0
	MOVF       main_W_L0+1, 0
	MOVWF      R0+1
	MOVLW      0
	ANDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      main_W_L0+0
	MOVF       R0+1, 0
	MOVWF      main_W_L0+1
;Mikro_Tablas_03_84A.c,20 :: 		PORTB=TablaVerdad(W);
	MOVF       R0+0, 0
	MOVWF      FARG_TablaVerdad_W+0
	MOVF       R0+1, 0
	MOVWF      FARG_TablaVerdad_W+1
	CALL       _TablaVerdad+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Mikro_Tablas_03_84A.c,21 :: 		}while(1);
	GOTO       L_main10
;Mikro_Tablas_03_84A.c,22 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

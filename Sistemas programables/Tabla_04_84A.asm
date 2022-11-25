
_TablaVerdad:

;Tabla_04_84A.c,1 :: 		char TablaVerdad(int a){
;Tabla_04_84A.c,2 :: 		char DT[]={0x0A,0x09,0x23,0x0F,0x20,0x07,0x17,0x3F};
	MOVLW      10
	MOVWF      TablaVerdad_DT_L0+0
	MOVLW      9
	MOVWF      TablaVerdad_DT_L0+1
	MOVLW      35
	MOVWF      TablaVerdad_DT_L0+2
	MOVLW      15
	MOVWF      TablaVerdad_DT_L0+3
	MOVLW      32
	MOVWF      TablaVerdad_DT_L0+4
	MOVLW      7
	MOVWF      TablaVerdad_DT_L0+5
	MOVLW      23
	MOVWF      TablaVerdad_DT_L0+6
	MOVLW      63
	MOVWF      TablaVerdad_DT_L0+7
;Tabla_04_84A.c,3 :: 		return (DT[a]);
	MOVF       FARG_TablaVerdad_a+0, 0
	ADDLW      TablaVerdad_DT_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
;Tabla_04_84A.c,4 :: 		}
L_end_TablaVerdad:
	RETURN
; end of _TablaVerdad

_main:

;Tabla_04_84A.c,6 :: 		void main() {
;Tabla_04_84A.c,8 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;Tabla_04_84A.c,9 :: 		TRISA = 0x1F;
	MOVLW      31
	MOVWF      TRISA+0
;Tabla_04_84A.c,10 :: 		do{
L_main0:
;Tabla_04_84A.c,11 :: 		x = PORTA&7;
	MOVLW      7
	ANDWF      PORTA+0, 0
	MOVWF      main_x_L0+0
	CLRF       main_x_L0+1
	MOVLW      0
	ANDWF      main_x_L0+1, 1
	MOVLW      0
	MOVWF      main_x_L0+1
;Tabla_04_84A.c,12 :: 		PORTB = TablaVerdad(x);
	MOVF       main_x_L0+0, 0
	MOVWF      FARG_TablaVerdad_a+0
	MOVF       main_x_L0+1, 0
	MOVWF      FARG_TablaVerdad_a+1
	CALL       _TablaVerdad+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Tabla_04_84A.c,13 :: 		}while(1);
	GOTO       L_main0
;Tabla_04_84A.c,14 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

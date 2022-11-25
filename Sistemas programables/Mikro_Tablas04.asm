
_TablaVerdad:

;Mikro_Tablas04.c,1 :: 		char TablaVerdad(int a){
;Mikro_Tablas04.c,2 :: 		char DT []={0x0A, 0x09, 0x23,0x0f,0x20,0x07,0x17,0x3f};
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
;Mikro_Tablas04.c,3 :: 		return (DT[a]);
	MOVF       FARG_TablaVerdad_a+0, 0
	ADDLW      TablaVerdad_DT_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
;Mikro_Tablas04.c,4 :: 		}
L_end_TablaVerdad:
	RETURN
; end of _TablaVerdad

_main:

;Mikro_Tablas04.c,5 :: 		void main() {
;Mikro_Tablas04.c,7 :: 		TRISB=0X00;
	CLRF       TRISB+0
;Mikro_Tablas04.c,8 :: 		TRISA=0X1F;
	MOVLW      31
	MOVWF      TRISA+0
;Mikro_Tablas04.c,9 :: 		do{
L_main0:
;Mikro_Tablas04.c,10 :: 		x=PORTA&7;
	MOVLW      7
	ANDWF      PORTA+0, 0
	MOVWF      main_x_L0+0
	CLRF       main_x_L0+1
	MOVLW      0
	ANDWF      main_x_L0+1, 1
	MOVLW      0
	MOVWF      main_x_L0+1
;Mikro_Tablas04.c,11 :: 		PORTB=TablaVerdad(x);
	MOVF       main_x_L0+0, 0
	MOVWF      FARG_TablaVerdad_a+0
	MOVF       main_x_L0+1, 0
	MOVWF      FARG_TablaVerdad_a+1
	CALL       _TablaVerdad+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Mikro_Tablas04.c,12 :: 		}while(1);
	GOTO       L_main0
;Mikro_Tablas04.c,13 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

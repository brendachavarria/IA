
_Interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;MyProject.c,2 :: 		void Interrupt(){
;MyProject.c,3 :: 		if (TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, BitPos(TMR0IF_bit+0)
	GOTO       L_Interrupt0
;MyProject.c,4 :: 		if( PORTA.F0 ){
	BTFSS      PORTA+0, 0
	GOTO       L_Interrupt1
;MyProject.c,5 :: 		TMR0 = duty;
	MOVF       _duty+0, 0
	MOVWF      TMR0+0
;MyProject.c,6 :: 		PORTA.F0 = 0;}
	BCF        PORTA+0, 0
	GOTO       L_Interrupt2
L_Interrupt1:
;MyProject.c,8 :: 		TMR0 = (255 - duty) ;
	MOVF       _duty+0, 0
	SUBLW      255
	MOVWF      TMR0+0
;MyProject.c,9 :: 		PORTA.F0 = 1;
	BSF        PORTA+0, 0
;MyProject.c,10 :: 		}
L_Interrupt2:
;MyProject.c,11 :: 		TMR0IF_bit         = 0;
	BCF        TMR0IF_bit+0, BitPos(TMR0IF_bit+0)
;MyProject.c,12 :: 		}
L_Interrupt0:
;MyProject.c,13 :: 		}
L_end_Interrupt:
L__Interrupt14:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _Interrupt

_main:

;MyProject.c,14 :: 		void main() {
;MyProject.c,15 :: 		TRISA.F0 = 0;
	BCF        TRISA+0, 0
;MyProject.c,16 :: 		TRISB = 3;
	MOVLW      3
	MOVWF      TRISB+0
;MyProject.c,17 :: 		PORTA = 0;
	CLRF       PORTA+0
;MyProject.c,18 :: 		PORTB = 0;
	CLRF       PORTB+0
;MyProject.c,19 :: 		OPTION_REG         = 2;
	MOVLW      2
	MOVWF      OPTION_REG+0
;MyProject.c,20 :: 		TMR0                 = 0;
	CLRF       TMR0+0
;MyProject.c,21 :: 		INTCON         = 0xA0;
	MOVLW      160
	MOVWF      INTCON+0
;MyProject.c,22 :: 		while(1){
L_main3:
;MyProject.c,23 :: 		while(!PORTB.F0){
L_main5:
	BTFSC      PORTB+0, 0
	GOTO       L_main6
;MyProject.c,24 :: 		if(duty > 254){
	MOVF       _duty+0, 0
	SUBLW      254
	BTFSC      STATUS+0, 0
	GOTO       L_main7
;MyProject.c,25 :: 		duty = 254;
	MOVLW      254
	MOVWF      _duty+0
;MyProject.c,26 :: 		PORTB.F2 =1;}
	BSF        PORTB+0, 2
L_main7:
;MyProject.c,27 :: 		duty++;
	INCF       _duty+0, 1
;MyProject.c,28 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
	NOP
;MyProject.c,29 :: 		}
	GOTO       L_main5
L_main6:
;MyProject.c,30 :: 		while(!PORTB.F1){
L_main9:
	BTFSC      PORTB+0, 1
	GOTO       L_main10
;MyProject.c,31 :: 		if(duty < 1)
	MOVLW      1
	SUBWF      _duty+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main11
;MyProject.c,32 :: 		duty = 1;
	MOVLW      1
	MOVWF      _duty+0
L_main11:
;MyProject.c,33 :: 		duty--;
	DECF       _duty+0, 1
;MyProject.c,34 :: 		PORTB.F2 =0;
	BCF        PORTB+0, 2
;MyProject.c,35 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	NOP
	NOP
;MyProject.c,36 :: 		}
	GOTO       L_main9
L_main10:
;MyProject.c,37 :: 		}
	GOTO       L_main3
;MyProject.c,38 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
